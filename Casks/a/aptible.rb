cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.7"
  sha256 arm:   "db3e6e7f0c7ebf23dffbea4d4d83a2a09acb6e27edada483abc8e7571c9cdc68",
         intel: "d301c4b6d6270da338d6515464047da407edcac184e17621d677c36e9c00a120"

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
