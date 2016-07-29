cask 'blender' do
  version '2.77a'
  sha256 'be2c935e38f8ac9e836b97e41d55e2db7a9ecd067c049b9ff685f36a2870d066'

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'blender.app', target: 'Blender.app'
  app 'blenderplayer.app', target: 'Blenderplayer.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blenderwrapper"
  binary shimscript, target: 'blender'

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod 'u+w', Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<-EOF.undent
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/blender' $@
    EOF

    FileUtils.chmod '+x', shimscript
  end
end
