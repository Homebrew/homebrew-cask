cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.0"
  sha256 arm:   "3d22cc88ff17c26baa4686a91886afc75384399ccfac5ca566b8c7aa64f4645b",
         intel: "3178672333bb873fcecd02d5c91b805a26a4fb16f6380f895c9dd537367248f7"

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
