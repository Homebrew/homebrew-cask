cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.13.0.11"
  sha256 arm:   "dd3d55eeb7523720ba00f89f34c14c8be25d057c82c174cfbbf5c2f620c56217",
         intel: "b1732625b7b5bfcbe978e46eed42785206fa66fd7ccdaad48cd6816b3bef7aff"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  zap :not_required
end
