cask :v1 => 'docker-machine-driver-parallels' do
  version '1.0.0'
  sha256 '10db67d0259bf3b99b465beb8fd7d7ff9229efc6cd6139dcdedf4a1fd6b0e2c6'

  url "https://github.com/Parallels/docker-machine-parallels/releases/download/v#{version}/docker-machine-driver-parallels"
  appcast 'https://github.com/Parallels/docker-machine-parallels/releases.atom'
  name 'Parallels driver for Docker Machine'
  homepage 'https://github.com/Parallels/docker-machine-parallels'
  license :unknown

  container :type => :naked
  binary 'docker-machine-driver-parallels'

  postflight do
    set_permissions "#{staged_path}/docker-machine-driver-parallels", '0755'
  end

  depends_on :cask => 'docker-machine'
  depends_on :arch => :x86_64
end
