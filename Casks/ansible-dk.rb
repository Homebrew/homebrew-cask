cask "ansible-dk" do
  version "1.2.0,3"
  sha256 "70fe9e4b8f27e8961c992de3ed1e30bb39c43319af28aae73c177f9530352a49"

  url "https://github.com/omniti-labs/ansible-dk/releases/download/#{version.before_comma}/ansible-dk-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "https://github.com/omniti-labs/ansible-dk/releases.atom"
  name "Ansible DK"
  name "Ansible Development Kit"
  homepage "https://github.com/omniti-labs/ansible-dk"

  pkg "ansible-dk-#{version.major_minor_patch}-1.pkg"

  uninstall pkgutil: "com.omniti.labs.ansible-dk"
end
