cask 'docker-machine' do
  version '0.5.5'
  sha256 'e19a74e4d9cce8dc50ab16a1f478fe5d6953bda9f794939032b3a1e84cbf6eb2'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/machine/releases/download/v#{version}/docker-machine_darwin-amd64"
  appcast 'https://github.com/docker/machine/releases.atom',
          :sha256 => '1db29b8a10da6c5b1781bb56048a30358e7e3979d6eba0102ed813ca1ccab2fb'
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
