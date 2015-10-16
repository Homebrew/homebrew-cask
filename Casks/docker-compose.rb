cask :v1_1 => 'docker-compose' do
  version '1.4.2'
  sha256 '52024e4b7f28206684dfa5471e5385405f67bd87f5f98ddf29ca5b06c5bdd286'

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
