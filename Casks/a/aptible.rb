cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1"
  sha256 arm:   "2abb59a68022d17b54dc57af290638497b63c1c7bd0d34e96aff6029186bbdeb",
         intel: "e9953c12c4ec5d304c348fdedff490e4e3788604e682ccbf9bb0fcd00f5b3deb"

  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/release/aptible-cli-go/aptible-cli-go_#{version}_darwin_#{arch}.pkg"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/docs/reference/aptible-cli/overview"

  livecheck do
    url :homepage
    regex(%r{/release/aptible-cli-go/aptible-cli-go[._-]v?(\d+(?:\.\d+)+)_darwin[._-]arm64\.pkg}i)
  end

  depends_on :macos
  depends_on formula: "libfido2"

  pkg "aptible-cli-go_#{version}_darwin_#{arch}.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"

  zap trash: "/usr/local/bin/aptible"
end
