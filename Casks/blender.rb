cask :v1 => 'blender' do
  version '2.75'
  sha256 '78cec3ba19b7a37f1aae4e776169098127dccbd24bb1d12b53fbcd220d610ccc'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
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
