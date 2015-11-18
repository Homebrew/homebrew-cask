cask :v1_1 => 'docker-machine' do
  version '0.5.1'
  sha256 'd9c0d689e4293f0a39b2a0adde49e7f90417c8ca71e383ed5ec18802c170083a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/machine/releases/download/v#{version}/docker-machine_darwin-amd64.zip"
  appcast 'https://github.com/docker/machine/releases.atom'
  name 'Docker Machine'
  homepage 'https://docs.docker.com/machine'
  license :apache

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

  depends_on :cask => 'docker'
  depends_on :arch => :x86_64
end
