cask 'blender' do
  version '2.79'
  sha256 '25d9c6d083726e19229ece4a7e4a5ebfb74ed53f575303e90d4db1e43f7817f1'

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

    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/blender' "$@"
    EOS
  end
end
