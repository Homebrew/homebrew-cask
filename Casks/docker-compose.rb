cask :v1 => 'docker-compose' do
  version '1.3.0'
  sha256 '9a0a3c7e5325569178671e56756aafe1cc7b60aff2b2657667da9811fc055f50'

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
