cask 'meshlab' do
  version '2020.03'
  sha256 '652d187bda86c94d1a50998fe224ede213cc1b99c3a61ea540d551fffd0f46ac'

  # github.com/cnr-isti-vclab/meshlab was verified as official when first introduced to the cask
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
