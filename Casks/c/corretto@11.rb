cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.33.0.10"
  sha256 arm:   "598533938e3524a99aeab387516e17314b4c80addc2e833f26bc6fa15f4139a8",
         intel: "3fc743352365798f13b9a97b7f5be9dd6db21a82f3b935294957d57eaac37007"

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
