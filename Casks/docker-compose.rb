cask 'docker-compose' do
  version '1.5.2'
  sha256 '6815ae29762450bec438285b60157873be9714922cfb424614d39d1fa24c3500'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom',
          :sha256 => 'c0bdb8a2745f73241fc2188eea159567753552a3b7afa0a1874ee61ff663b288'
  name 'Docker Compose'
  homepage 'https://docs.docker.com/compose'
  license :apache

  container :type => :naked
  binary 'docker-compose-Darwin-x86_64', :target => 'docker-compose'

  postflight do
    set_permissions "#{staged_path}/docker-compose-Darwin-x86_64", '0755'
  end

  depends_on :cask => 'docker'
  depends_on :arch => :x86_64
end
