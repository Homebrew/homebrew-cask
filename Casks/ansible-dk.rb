cask "ansible-dk" do
  version "1.2.0,3"
  sha256 "70fe9e4b8f27e8961c992de3ed1e30bb39c43319af28aae73c177f9530352a49"

  url "https://github.com/omniti-labs/ansible-dk/releases/download/#{version.csv.first}/ansible-dk-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Ansible DK"
  name "Ansible Development Kit"
  desc "Omnibus-based toolkit for working on Ansible-based infrastructure code"
  homepage "https://github.com/omniti-labs/ansible-dk"

  livecheck do
    url "https://github.com/omniti-labs/ansible-dk/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ansible-dk-(\d+(?:\.\d+)+)-(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "ansible-dk-#{version.major_minor_patch}-1.pkg"

  uninstall pkgutil: "com.omniti.labs.ansible-dk"
end
