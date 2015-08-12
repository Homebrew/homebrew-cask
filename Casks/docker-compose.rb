cask :v1_1 => 'docker-compose' do
  version '1.4.0'
  sha256 'dcbf38164145705a36c1dc8d725aae045f2fc9b094fe443f2e66fc74366c4594'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom'
  name 'Docker Compose'
  homepage 'https://docs.docker.com/compose'
  license :apache

  container :type => :naked
  binary 'docker-compose-Darwin-x86_64', :target => 'docker-compose'

  postflight do
    set_permissions "#{staged_path}/docker-compose-Darwin-x86_64", '0755'
  end

  depends_on :formula => 'docker'
  depends_on :arch => :x86_64
end
