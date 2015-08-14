cask :v1_1 => 'docker-machine' do
  version 'v0.4.0'
  sha256 'e9d57ed56fd145223e203060c58e67259faac139a79b3942074dc0d4071b231d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/machine/releases/download/#{version}/docker-machine_darwin-amd64"
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
