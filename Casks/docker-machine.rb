cask :v1_1 => 'docker-machine' do
  version '0.4.1'
  sha256 '6879c1cf4cf38f3b59209f86858305e4115b11dfdd98163b29b557f3648c14c9'

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
