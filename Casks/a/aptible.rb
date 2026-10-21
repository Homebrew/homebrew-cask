cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.5"
  sha256 arm:   "43f99a665592a2c4059266663d4fcff953da1fbd361fa75a64c597866fafd4cf",
         intel: "1dd67fc3c58b812993f92214f824626edb8ef9d0e49a45c361fe7a91b4cbe1d3"

  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/release/aptible-cli-go/aptible-cli-go_#{version}_darwin_#{arch}.pkg"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/docs/reference/aptible-cli/overview"

  livecheck do
    url :homepage
    regex(%r{/release/aptible-cli-go/aptible-cli-go[._-]v?(\d+(?:\.\d+)+)_darwin[._-]arm64\.pkg}i)
  end

  depends_on formula: "libfido2"
  depends_on :macos

  pkg "aptible-cli-go_#{version}_darwin_#{arch}.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"

  zap trash: "/usr/local/bin/aptible"
end
