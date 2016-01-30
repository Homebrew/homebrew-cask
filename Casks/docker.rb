cask 'docker' do
  version '1.9.1'
  sha256 '8750ccc2098ec94ef7db110e0016ab02cfa47a1a76f0deb3faa50335b5ec0df9'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '057bec10255c7a3886033ad55fbfe8635bc744239f60fff832fde9044c803efa'
  name 'Docker Engine Client'
  homepage 'https://docs.docker.com/engine/userguide/'
  license :apache

  depends_on arch: :x86_64
  container type: :naked

  binary "docker-#{version}", target: 'docker'

  postflight do
    set_permissions "#{staged_path}/docker-#{version}", '0755'
  end
end
