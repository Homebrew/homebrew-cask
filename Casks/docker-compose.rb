cask 'docker-compose' do
  version '1.6.2'
  sha256 'baac029d69581bab8d100a5c4fb73bd8e23a828245f7374f89560a66337d441c'

  # github.com/docker/compose was verified as official when first introduced to the cask
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom',
          checkpoint: 'c1382c6b1ccbd709013f9930ec94a0d7b201aeb5ba24cd1191057a5aab22650d'
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
