cask 'j' do
  version '807'
  sha256 '3c78500eded82cd70dfff522ae61c54c0b7b8e746e43535e47f8e4c9df0987bd'

  url "https://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  name 'J'
  homepage 'https://www.jsoftware.com/'

  apps = ['jbrk', 'jcon', 'jhs', 'jqt']
  apps.each do |a|
    app "j64-#{version}/#{a}.app"
  end

  installer script: {
                      executable: "j64-#{version}/bin/jconsole",
                      args:       ['-js', "exit install'qtide'"],
                    }

  # target names according to readme.txt
  ['jcon', 'jconsole'].each do |b|
    binary "j64-#{version}/bin/jconsole", target: b
  end
  commands = ['jbrk', 'jhs', 'jqt']
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

  uninstall delete: "#{staged_path}/#{token}" # Not actually necessary, since it would be deleted anyway. It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
end
