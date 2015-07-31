cask :v1 => 'docker-compose' do
  version '1.3.3'
  sha256 '6872c2c760940fb15470f07085fa23ff536db4cccaed4541c15b6856fb0675d0'

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
