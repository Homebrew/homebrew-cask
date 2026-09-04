cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.2"
  sha256 arm:   "21a5a567d162512d7357da525ae96f17187b565a25040835b6a2d3f8866fdd6f",
         intel: "01632287a04c2b1d1d2e0cafd609b45e1d4f0ed4178a49c2fa8d0cb3df12d13b"

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
