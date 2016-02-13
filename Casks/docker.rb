cask 'docker' do
  version '1.10.1'
  sha256 '206da6eb979f7d06ca4c9c9f07f825ec3a0759a5aa3abee3c101c555aa493787'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '7f6fe11ddf41d2f66badd6744e712f48b91a34bc99a48554f426083046412989'
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
