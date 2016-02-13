cask 'docker' do
  version '1.10.0'
  sha256 'f8dc0c7ef2a7efbe0e062017822066e55a40c752b9e92a636359f59ef562d79f'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '6f0904fe8a632ba9adba98b66ff6af7e64bb8575a2fb3b494d9a0797377fe496'
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
