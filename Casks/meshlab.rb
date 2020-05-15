cask 'meshlab' do
  version '2020.05'
  sha256 '5a6ac4e6ef85ce88e629381de19be171565109c854cbc01c3f0a866102ec2bac'

  # github.com/cnr-isti-vclab/meshlab/ was verified as official when first introduced to the cask
  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/Meshlab-#{version}/MeshLab#{version}-macos.dmg"
  appcast 'https://github.com/cnr-isti-vclab/meshlab/releases.atom'
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
