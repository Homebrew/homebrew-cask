cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.8.9.1"
  sha256 arm:   "2352f5eb51bccda7d9b1ff4139df7ae3ec3381ff91d40748f2a35bb5c58f0ff3",
         intel: "3c1c898b3f754376eeac85e1186c7f369f3b4799938031cf72fd2cbed3c1cda4"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
