cask 'docker-compose' do
  version '1.7.0'
  sha256 'c68245483befd3c36027feaf61c17cecf86a19cefb0159fd60c5c17de1ff0c2b'

  # github.com/docker/compose was verified as official when first introduced to the cask
  url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  appcast 'https://github.com/docker/compose/releases.atom',
          checkpoint: '1784fe2c74b1e94040aa6e60c19db18ca947c1ca18041c166a6a9535c84993b5'
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
