cask 'j' do
  version '804'
  sha256 'b730a73e78303a40166e297f9b4d874bfa2e4877ef02137641a55252157a2b44'

  url "http://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  name 'J'
  homepage 'http://www.jsoftware.com'
  license :gpl

  apps = %w[jbrk jcon jhs jqt]
  apps.each do |a|
    app "j64-#{version}/#{a}.app"
  end

  installer script: "j64-#{version}/updatejqt.sh",
            sudo:   false
  # We have long provided jconsole on the path. However readme.txt specifies
  # that jconsole is available under the name jcon. Just provide both names.
  %w[jcon jconsole].each do |b|
    binary "j64-#{version}/bin/jconsole", target: b
  end
  # Provide jbrk and jhs on the path too, as readme.txt specifies.
  %w[jbrk jhs jqt].each do |b|
    binary "j64-#{version}/bin/#{b}.command", target: b
  end
  # The provided jqt.command won't work if run through a symlink, so instead
  # we'll symlink the script inside jqt.app into the path.
  binary "#{appdir}/jqt.app/Contents/MacOS/apprun", target: 'jqt'

  postflight do
    # All four of the Mac apps use a relative path to launch the underlying
    # binaries, so none of them work after homebrew-cask moves them into
    # /Applications.
    apps.each do |a|
      cli = %w[jcon jhs].include? a
      command = a == 'jcon' ? 'jconsole' : (a + '.command')
      File.write "#{appdir}/#{a}.app/Contents/MacOS/apprun", <<-EOF.gsub(%r{^ +}, '')
          #!/bin/sh
          #{cli ? 'open ' : ''}"#{staged_path}/j64-#{version}/bin/#{command}"
      EOF
    end
  end
end
