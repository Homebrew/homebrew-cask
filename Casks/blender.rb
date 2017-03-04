cask 'blender' do
  version '2.78b'
  sha256 'c30b2eb7097c877169d2e10c03d8938667373f1b93ce0fb05f61543bd119ba67'

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
    set_permissions shimscript, '+x'
  end
end
