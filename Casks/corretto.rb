cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.2.9.1"
  sha256 arm:   "a3a26b30775fe96fd46a63fd6700c6ad627de87b1ded3f760dfede2ef2cf04bb",
         intel: "a855b3c996cc215e50f228d03579a57abf26ed12aaae8a160ba175daca16c73e"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
