cask :v1 => 'docker' do
  version '1.9.0'
  sha256 '91a8701e41a479def5371a333657c58c36478602e1f5eb1835457a3880232a2e'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/machine/releases.atom'
  name 'Docker Engine Client'
  homepage 'http://docs.docker.com/engine/userguide/'
  license :apache

  container :type => :naked
  binary "docker-#{version}", :target => 'docker'

  postflight do
    set_permissions "#{staged_path}/docker-#{version}", '0755'
  end

  depends_on :arch => :x86_64
end
