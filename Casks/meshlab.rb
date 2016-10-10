cask 'meshlab' do
  version '1.3.3'
  sha256 '7a19583ecd8282e9dc84e827e9e667f2139edd371b5f83a5c3fcbb88cb33923d'

  url "https://downloads.sourceforge.net/meshlab/meshlab/MeshLab%20v#{version}/MeshLabMac_v#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/meshlab/rss?path=/meshlab',
          checkpoint: '6c7f4c0f099a5ee9ddca6a2cd2afb4c4c3c9a293bb06a4bb0f2a1b357f5de7a1'
  name 'MeshLab'
  homepage 'http://meshlab.sourceforge.net/'

  app 'meshlab.app'

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/meshlab.app/Contents/MacOS") do
      File.symlink('meshlab', 'MeshLab') unless File.exist? 'MeshLab'
    end
  end
end
