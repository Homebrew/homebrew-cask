cask 'docker-compose' do
  version '1.7.1'
  sha256 'b9af21e00b6d887a63d5aa575f471bf3074add20cddf4f7e74bbe33d07cbf3e1'

  # github.com/docker/compose was verified as official when first introduced to the cask
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom',
          checkpoint: '4806fe59d342505008234bc772b4566005c0c8828df2146fd15d0503827b35fc'
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
