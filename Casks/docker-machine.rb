cask 'docker-machine' do
  version '0.5.6'
  sha256 'a9fb7146d370b3623ca8b13f75e1c0bdf2a07ef2553ac94e61ec96d47c6c895b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/machine/releases/download/v#{version}/docker-machine_darwin-amd64"
  appcast 'https://github.com/docker/machine/releases.atom',
          :sha256 => '85dafeba763acbb1431ad940e35a024af5b8e4dc81a57148b630aa42534dca40'
  name 'Docker Machine'
  homepage 'https://docs.docker.com/machine'
  license :apache

  depends_on :cask => 'docker'
  depends_on :arch => :x86_64

  binary 'docker-machine'
  binary 'docker-machine-driver-amazonec2'
  binary 'docker-machine-driver-azure'
  binary 'docker-machine-driver-digitalocean'
  binary 'docker-machine-driver-exoscale'
  binary 'docker-machine-driver-generic'
  binary 'docker-machine-driver-google'
  binary 'docker-machine-driver-hyperv'
  binary 'docker-machine-driver-none'
  binary 'docker-machine-driver-openstack'
  binary 'docker-machine-driver-rackspace'
  binary 'docker-machine-driver-softlayer'
  binary 'docker-machine-driver-virtualbox'
  binary 'docker-machine-driver-vmwarefusion'
  binary 'docker-machine-driver-vmwarevcloudair'
  binary 'docker-machine-driver-vmwarevsphere'
end
