cask "mondoo-cli" do
  version "5.21.0"
  sha256 "a90b5e7c5e5efcded69b6ba3a00ffd6950c2dd181d9df92d25a6cd1f86a65afc"

  url "https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg"
  name "Mondoo"
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io/"

  livecheck do
    url "https://releases.mondoo.io/mondoo/latest/index.html"
    regex(%r{href='\.\./(\d+(?:\.\d+)+)}i)
  end

  pkg "mondoo_#{version}_darwin_universal.pkg"

  uninstall script: {
    executable: "/Library/Mondoo/#{version}/uninstall.sh",
    sudo:       true,
  }

  zap trash: [
                '/Library/Mondoo',
                '/etc/opt/mondoo',
                '/usr/local/bin/mondoo',
             ]
end
