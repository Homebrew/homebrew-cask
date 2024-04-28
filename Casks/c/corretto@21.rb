cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.3.9.1"
  sha256 arm:   "7d3722cf3fd27df51806b2440e91ce5f9bfc449c5ecb1767ec679a3388e6ff3f",
         intel: "d7309a6545277c6df6a4ea540d33792a29ca9e473a59ba1b7df2490b6ee597b1"

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
