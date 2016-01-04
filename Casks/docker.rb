cask 'docker' do
  version '1.9.1'
  sha256 '8750ccc2098ec94ef7db110e0016ab02cfa47a1a76f0deb3faa50335b5ec0df9'

  url "https://get.docker.com/builds/Darwin/x86_64/docker-#{version}"
  appcast 'https://github.com/docker/machine/releases.atom',
          :sha256 => '2840ae55fa5e849ab523eae9f9d6c2a2cd055d42503caa055cdb43120baee94c'
  name 'Docker Engine Client'
  homepage 'https://docs.docker.com/engine/userguide/'
  license :apache

  depends_on :arch => :x86_64
  container :type => :naked

  postflight do
    set_permissions "#{staged_path}/docker-#{version}", '0755'
  end

  binary "docker-#{version}", :target => 'docker'
end
