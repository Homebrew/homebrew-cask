cask :v1 => 'docker-machine-driver-parallels' do
  version '1.0.1'
  sha256 'd9802e3f21a769293ada9d3c86a5870b87e40df38b5395957105ceea025f23b9'

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
