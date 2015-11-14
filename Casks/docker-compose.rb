cask :v1_1 => 'docker-compose' do
  version '1.5.1'
  sha256 '113c6e3f5485e3e25654c324ee075cd0c042bd9c156e7a26d4c2d14e401074e4'

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

  depends_on :cask => 'docker'
  depends_on :arch => :x86_64
end
