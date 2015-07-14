cask :v1 => 'docker-compose' do
  version '1.3.2'
  sha256 '0541bd54e4308bfd6e8648e02d1253f48c73f03ef561f697b599f3f4b0b5f61c'

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
