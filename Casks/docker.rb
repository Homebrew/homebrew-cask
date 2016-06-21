cask 'docker' do
  version '1.11.2'
  sha256 'f44da1025c355c51ae6e150fcc0672b87a738b9c8ad98e5fa6091502211da19a'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}.tgz"
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '283dd31e69c73b28c0bca705ef2e6f40c185cffc269848c309556baf67234af8'
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
