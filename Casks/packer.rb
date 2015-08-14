cask :v1 => 'packer' do
  version '0.8.5'
  sha256 '89855f2d854645cded33b1891324888750caa17556dc081f1a8292c8c9c5eb37'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/packer/packer_#{version}_darwin_amd64.zip"
  name 'Packer'
  homepage 'https://www.packer.io/'
  license :oss

  binary 'packer'
  binary 'packer-builder-amazon-chroot'
  binary 'packer-builder-amazon-ebs'
  binary 'packer-builder-amazon-instance'
  binary 'packer-builder-digitalocean'
  binary 'packer-builder-docker'
  binary 'packer-builder-file'
  binary 'packer-builder-googlecompute'
  binary 'packer-builder-null'
  binary 'packer-builder-openstack'
  binary 'packer-builder-parallels-iso'
  binary 'packer-builder-parallels-pvm'
  binary 'packer-builder-qemu'
  binary 'packer-builder-virtualbox-iso'
  binary 'packer-builder-virtualbox-ovf'
  binary 'packer-builder-vmware-iso'
  binary 'packer-builder-vmware-vmx'
  binary 'packer-post-processor-artifice'
  binary 'packer-post-processor-atlas'
  binary 'packer-post-processor-compress'
  binary 'packer-post-processor-docker-import'
  binary 'packer-post-processor-docker-push'
  binary 'packer-post-processor-docker-save'
  binary 'packer-post-processor-docker-tag'
  binary 'packer-post-processor-vagrant'
  binary 'packer-post-processor-vagrant-cloud'
  binary 'packer-post-processor-vsphere'
  binary 'packer-provisioner-ansible-local'
  binary 'packer-provisioner-chef-client'
  binary 'packer-provisioner-chef-solo'
  binary 'packer-provisioner-file'
  binary 'packer-provisioner-powershell'
  binary 'packer-provisioner-puppet-masterless'
  binary 'packer-provisioner-puppet-server'
  binary 'packer-provisioner-salt-masterless'
  binary 'packer-provisioner-shell'
  binary 'packer-provisioner-shell-local'
  binary 'packer-provisioner-windows-restart'
  binary 'packer-provisioner-windows-shell'
end
