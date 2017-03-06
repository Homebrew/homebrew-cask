cask 'j' do
  version '805'
  sha256 '55acaed87895dddcfe8dc08ae3c5045b6705830622c923c6852296cd0f5720a5'

  url "http://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  name 'J'
  homepage 'http://www.jsoftware.com/'

  apps = %w[jbrk jcon jhs jqt]
  apps.each do |a|
    app "j64-#{version}/#{a}.app"
  end

  installer script: "j64-#{version}/updatejqt.sh",
            sudo:   false

  # target names according to readme.txt
  %w[jcon jconsole].each do |b|
    binary "j64-#{version}/bin/jconsole", target: b
  end
  commands = %w[jbrk jhs jqt]
  commands.each do |b|
    binary "j64-#{version}/bin/#{b}.command", target: b
  end

  postflight do
    # Use `readlink` to get full path of symlinked commands.
    commands.each do |c|
      command = "#{staged_path}/j64-#{version}/bin/#{c}.command"
      IO.write command, IO.read(command).gsub('$0', '$(/usr/bin/readlink "$0" || /bin/echo "$0")')
    end

    # Fix relative paths inside App bundles.
    apps.each do |a|
      apprun = "#{appdir}/#{a}.app/Contents/MacOS/apprun"
      IO.write apprun, IO.read(apprun).gsub(%r{`dirname "\$0"`.*?/bin}, "#{staged_path}/j64-#{version}/bin")
    end
  end
end
