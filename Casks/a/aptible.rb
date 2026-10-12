cask "aptible" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.4"
  sha256 arm:   "eab8b036d9b1657f45db95a743ed7437d80c1548b4a780179e0b7b969b489bf1",
         intel: "64eb1435b4917534a3acfd85003d5d1dae34331f92f434a2bb6a30b6240e748e"

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
