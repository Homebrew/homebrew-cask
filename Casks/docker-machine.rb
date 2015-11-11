cask :v1_1 => 'docker-machine' do
  version '0.5.0'
  sha256 '75f18940c734425b3635c9485da148910dee6612cc677549563ba7662e3d36f6'

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

  depends_on :formula => 'docker'
  depends_on :arch => :x86_64
end
