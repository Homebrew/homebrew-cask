cask 'meshlab' do
  version '2016.12'
  sha256 '1a9d81f7bb7fb3da223e83768d13601b4728abde9276a415049bbb33b74baecf'

  # github.com/cnr-isti-vclab/meshlab was verified as official when first introduced to the cask
  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/v#{version}/MeshLab#{version}.dmg"
  appcast 'https://github.com/cnr-isti-vclab/meshlab/releases.atom',
          checkpoint: '88f54b6cd8c0d74a89cb6274b67a6af5e7b853d9eeefee183974c5ecfe28d4cb'
  name 'MeshLab'
  homepage 'http://www.meshlab.net/'

  app 'meshlab.app'

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/meshlab.app/Contents/MacOS") do
      File.symlink('meshlab', 'MeshLab') unless File.exist? 'MeshLab'
    end
  end
end
