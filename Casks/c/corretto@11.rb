cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.33.0.9"
  sha256 arm:   "b1b69c3bc1c6f4612c66f8aa90aeae199121b36ac9eb9a0e56278299d45e99f3",
         intel: "24d436843e078eb4534035733ea03a53f3eae4724e4fa12ac402faab64d5e82b"

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
