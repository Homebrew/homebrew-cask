cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.1.8.1"
  sha256 arm:   "b5d534a69a9d5a15dd876e30df7f7b1afbbefee86ab6205af022ff38391d4d33",
         intel: "6acbbaf468785e3d6ec2868dea54607c5eed895c549bbdf20319a548492aa608"

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
