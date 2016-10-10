cask 'ansible-dk' do
  version '1.2.0-3'
  sha256 '70fe9e4b8f27e8961c992de3ed1e30bb39c43319af28aae73c177f9530352a49'

  url "https://github.com/omniti-labs/ansible-dk/releases/download/#{version.major_minor_patch}/ansible-dk-#{version}.dmg"
  appcast 'https://github.com/omniti-labs/ansible-dk/releases.atom',
          checkpoint: 'e4ff73165aeb8fbb73bf77422ce1ee68c80e8569d695ece740865aa121fce931'
  name 'Ansible DK'
  name 'Ansible Development Kit'
  homepage 'https://github.com/omniti-labs/ansible-dk'

  pkg 'ansible-dk-1.2.0-1.pkg'

  uninstall pkgutil: 'com.omniti.labs.ansible-dk'
end
