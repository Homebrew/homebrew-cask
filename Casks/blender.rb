cask 'blender' do
  version '2.77a'
  sha256 'be2c935e38f8ac9e836b97e41d55e2db7a9ecd067c049b9ff685f36a2870d066'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
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
    pythonversion = '3.4'
    File.open(shimscript, 'w') do |f|
      f.puts '#!/bin/bash'
      f.puts "export PYTHONHOME=#{appdir}/Blender.app/Contents/Resources/#{version}/python/lib/python#{pythonversion}"
      f.puts "#{appdir}/Blender.app/Contents/MacOS/blender $@"
      FileUtils.chmod '+x', f
    end
  end
end
