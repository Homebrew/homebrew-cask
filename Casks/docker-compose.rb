cask 'docker-compose' do
  version '1.6.0'
  sha256 '1c0f652a061e32b1acabf1741b255b22702b575ffc6f8e8fae91e9888c96edfc'

  # github.com/docker/compose was verified as official when first introduced to the cask
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom',
          checkpoint: '39024892fb12271c05fcd403bb07be01ab1f259d0ba6409a2c9537e0140a3b20'
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
