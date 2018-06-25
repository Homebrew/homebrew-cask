cask 'blender' do
  version '2.79b'
  sha256 '07592ebb50749638202d51a6220b05e4c9b070d149fce34bb6ce8757fad2f152'

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macOS-10.6.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "blender-#{version}-macOS-10.6/blender.app", target: 'Blender.app'
  app "blender-#{version}-macOS-10.6/blenderplayer.app", target: 'Blenderplayer.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: 'blender'

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod 'u+w', Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/blender' "$@"
    EOS
  end
end
