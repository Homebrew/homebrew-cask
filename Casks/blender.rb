cask 'blender' do
  version '2.77'
  sha256 '19ec4b171b0ed454dbbe93633ba083844a7fbbb3441cb2cd2c1c72dcc991de5d'

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
      f.puts "export PYTHONHOME=#{staged_path}/blender-#{version}-OSX_10.6-x86_64/blender.app/Contents/Resources/#{version}/python/lib/python#{pythonversion}"
      f.puts "#{staged_path}/blender-#{version}-OSX_10.6-x86_64/blender.app/Contents/MacOS/blender $@"
      FileUtils.chmod '+x', f
    end
  end
end
