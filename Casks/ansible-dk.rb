cask 'ansible-dk' do
  version '1.2.0-3'
  sha256 '70fe9e4b8f27e8961c992de3ed1e30bb39c43319af28aae73c177f9530352a49'

  url "https://github.com/omniti-labs/ansible-dk/releases/download/#{version.major_minor_patch}/ansible-dk-#{version}.dmg"
  appcast 'https://github.com/omniti-labs/ansible-dk/releases.atom',
          checkpoint: 'acf8274f73fbdedb3c146a6dce1695fc196d789ffe25acac644c22c8ddeb523c'
  name 'Ansible DK'
  name 'Ansible Development Kit'
  homepage 'https://github.com/omniti-labs/ansible-dk'

  pkg "ansible-dk-#{version.major_minor_patch}-1.pkg"

  uninstall pkgutil: 'com.omniti.labs.ansible-dk'
end
