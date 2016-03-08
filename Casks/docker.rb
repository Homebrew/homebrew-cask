cask 'docker' do
  version '1.10.2'
  sha256 '29249598587ad8f8597235bbeb11a11888fffb977b8089ea80b5ac5267ba9f2e'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '381d14023e84bd8f0212bc6fca04776a865c74b61e7e49e43ed8e38acfa78337'
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
