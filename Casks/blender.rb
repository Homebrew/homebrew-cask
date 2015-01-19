cask :v1 => 'blender' do
  version '2.73'
  sha256 'b95fc8caaf988a355242bd73bab44f7a95933826e49268c48bf46b9a672fa911'

  url "http://download.blender.org/release/Blender#{version}/blender-#{version}-OSX_10.6-x86_64.zip"
  homepage 'http://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'

  preflight do
    wrapper = "#{staged_path}/Blender/blender.sh"
    pythonversion = "3.4"
    File.open(wrapper, "w") do |f|
      f.puts "#!/bin/sh"
      f.puts "export PYTHONHOME=#{staged_path}/Blender/blender.app/Contents/Resources/#{version}/python/lib/python#{pythonversion}"
      f.puts "#{staged_path}/Blender/blender.app/Contents/MacOS/blender $*"
      FileUtils.chmod "+x", f
    end
  end
  binary 'Blender/blender.sh', :target => 'blender'
end
