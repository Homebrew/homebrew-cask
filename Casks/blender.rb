cask 'blender' do
  version '2.78'
  sha256 'af5ad83dc501d4ca8b905a0cb047437f66799459fe27b168a27fbc363d0e29e0'

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'blender.app', target: 'Blender.app'
  app 'blenderplayer.app', target: 'Blenderplayer.app'
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
    FileUtils.chmod '+x', shimscript
  end
end
