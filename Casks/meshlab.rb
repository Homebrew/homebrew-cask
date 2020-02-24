cask 'meshlab' do
  version '2020.02'
  sha256 'f18de648c1d73d264ba6e4d68418fc7c33897643a16d8fdf62a68c583bdbc1f2'

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
