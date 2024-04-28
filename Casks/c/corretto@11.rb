cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.23.9.1"
  sha256 arm:   "111f3cb12be2cdaa11a480a53ea326aea98ee92eaec964810a697ac1583e6103",
         intel: "fb600d1d54668dcb74b036141321da1fc8af45dada94fef4ef119d5ad086b6ed"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
  # No zap stanza required
end
