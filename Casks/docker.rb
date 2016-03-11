cask 'docker' do
  version '1.10.3'
  sha256 '054330d838816989400c0bd11533691ce59a230d694e871204d2eee37298054e'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: 'ed067a0c9a4021acb5e59e866192bea0f3dc7e454360a8530b7fa80fe4f0d2b0'
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
