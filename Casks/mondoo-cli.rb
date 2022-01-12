cask "mondoo-cli" do
  version "5.20.0"
  sha256 "52932b4c2d5e8355e745edb96de20811e0c42a9c61338d17b4cab3da95fc0399"

  url "https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io/"

  livecheck do
    url "https://releases.mondoo.io/mondoo/latest"
    regex(%r{href='\.\./(\d+.\d+.\d+)}i)
  end

  pkg "mondoo_#{version}_darwin_universal.pkg"

  uninstall script: {
    executable: "/Library/Mondoo/#{version}/uninstall.sh",
    sudo:       true,
  }


  zap trash: [
               '/Library/Mondoo',
               '/etc/opt/mondoo',
               '/usr/local/bin/mondoo'
             ]
end
