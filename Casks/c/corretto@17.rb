cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.20.10.1"
  sha256 arm:   "146094d1656bb495c45a12c086bcce4bdd98658b5bd2702339ca64a6b489a05c",
         intel: "a8bb7815b50ebf4387b05c089454096da61830d769b9d4af75975b9bf328d9ea"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
