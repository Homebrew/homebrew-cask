cask 'docker' do
  version '1.9.1'
  sha256 '8750ccc2098ec94ef7db110e0016ab02cfa47a1a76f0deb3faa50335b5ec0df9'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/docker/releases',
          :sha256 => 'e0ba6388be0597f74e8f1396025820ef9ccf7e7a3dc91bfad8de64185631d441'
  name 'Docker Engine Client'
  homepage 'https://docs.docker.com/engine/userguide/'
  license :apache

  depends_on :arch => :x86_64
  container :type => :naked

  binary "docker-#{version}", :target => 'docker'

  postflight do
    set_permissions "#{staged_path}/docker-#{version}", '0755'
  end
end
