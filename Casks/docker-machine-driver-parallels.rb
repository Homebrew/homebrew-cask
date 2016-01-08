cask 'docker-machine-driver-parallels' do
  version '1.1.1'
  sha256 '63cafe483fa44e03c3fce2175c690dd0eae318ec34b7f5a14996f6a0f0c5ac38'

  url "https://github.com/Parallels/docker-machine-parallels/releases/download/v#{version}/docker-machine-driver-parallels"
  appcast 'https://github.com/Parallels/docker-machine-parallels/releases.atom',
          :sha256 => '79e10970d2f598bfc77a20e13d2ff498c734f614eec2c2fed8941be762ee79e5'
  name 'Parallels driver for Docker Machine'
  homepage 'https://github.com/Parallels/docker-machine-parallels'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on :cask => 'docker-machine'
  depends_on :arch => :x86_64
  container :type => :naked

  binary 'docker-machine-driver-parallels'

  postflight do
    set_permissions "#{staged_path}/docker-machine-driver-parallels", '0755'
  end
end
