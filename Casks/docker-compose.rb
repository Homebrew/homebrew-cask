cask 'docker-compose' do
  version '1.6.0'
  sha256 '1c0f652a061e32b1acabf1741b255b22702b575ffc6f8e8fae91e9888c96edfc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom',
          checkpoint: '9fa9199b9e819531cefe656982dca5b6f5407d8a36189926d75161f5a1d69527'
  name 'Docker Compose'
  homepage 'https://docs.docker.com/compose'
  license :apache

  depends_on cask: 'docker'
  depends_on arch: :x86_64
  container type: :naked

  binary 'docker-compose-Darwin-x86_64', target: 'docker-compose'

  postflight do
    set_permissions "#{staged_path}/docker-compose-Darwin-x86_64", '0755'
  end
end
