cask :v1_1 => 'docker-compose' do
  version '1.4.1'
  sha256 '8f93cd99f43a03be16f6607d5b47d86b4aee582e3d4b19223d90da1e253433bb'

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
