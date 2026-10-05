cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.3"
  sha256 arm:   "f6f9967313476d6d1542c2aed7fdea12e6556b411df32627c14ef2a0436a15ee",
         intel: "50ed2ec14eae0c4f2a7c214be5e5361091dca2458ab80d4d92b4187ad77b37e9"

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
