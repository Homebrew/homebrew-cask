cask 'meshlab' do
  version '2016.12'
  sha256 '1a9d81f7bb7fb3da223e83768d13601b4728abde9276a415049bbb33b74baecf'

  # github.com/cnr-isti-vclab/meshlab was verified as official when first introduced to the cask
  url "http://github.com/cnr-isti-vclab/meshlab/releases/download/v#{version}/MeshLab#{version}.dmg"
  appcast 'http://github.com/cnr-isti-vclab/meshlab/releases.atom',
          checkpoint: '77a82ca5a2c0050b6d3790364e35d0330423e6df854021bf9691a14e018029f2'
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
