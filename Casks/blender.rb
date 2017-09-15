cask 'blender' do
  version '2.79'
  sha256 '953fbb77080300466cb084ad02f847d188e94573f1dd4a6edaa7c505dd55c88e'

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macOS-10.6.tar.gz"
  name 'Blender'
  homepage 'https://www.blender.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "blender-#{version}-macOS-10.6/blender.app", target: 'Blender.app'
  app "blender-#{version}-macOS-10.6/blenderplayer.app", target: 'Blenderplayer.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: 'blender'

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod 'u+w', Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<-EOS.undent
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/blender' "$@"
    EOS
  end
end
