cask :v1 => 'docker-compose' do
  version '1.2.0'
  sha256 '24a5d284f3e85f5a42701afc3c9959a29aa2d874dc122fa711de5f710d0a01d8'

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
