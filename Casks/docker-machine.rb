cask :v1_1 => 'docker-machine' do
  version '0.5.0'
  sha256 '75f18940c734425b3635c9485da148910dee6612cc677549563ba7662e3d36f6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/machine/releases/download/v#{version}/docker-machine_darwin-amd64"
  appcast 'https://github.com/docker/machine/releases.atom'
  name 'Docker Machine'
  homepage 'https://docs.docker.com/machine'
  license :apache

  container :type => :naked
  binary 'docker-machine_darwin-amd64', :target => 'docker-machine'

  postflight do
    set_permissions "#{staged_path}/docker-machine_darwin-amd64", '0755'
  end

  depends_on :formula => 'docker'
  depends_on :arch => :x86_64
end
