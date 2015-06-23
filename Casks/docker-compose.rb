cask :v1 => 'docker-compose' do
  version '1.3.1'
  sha256 '3df40490ecfe5c2e44ad1788a5451d8a8b624dea9774c87cb15b952a3f32458e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom'
  name 'Docker Compose'
  homepage 'https://docs.docker.com/compose'
  license :apache

  container :type => :naked
  binary 'docker-compose-Darwin-x86_64', :target => 'docker-compose'

  postflight do
    system '/bin/chmod', '--', '0755', "#{staged_path}/docker-compose-Darwin-x86_64"
  end

  depends_on :formula => 'docker'
  depends_on :arch => :x86_64
end
