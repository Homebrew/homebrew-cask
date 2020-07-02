cask 'meshlab' do
  version '2020.07'
  sha256 '84a560b25bda62b26c4e74359d6da0c30b154f60b6deabfad93a177500d0e99b'

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
