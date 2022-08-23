cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "18.0.2.9.1"
  sha256 arm:   "19f29b4973897d929011a5540db03b859b81ae5a0fc03dc487597b8cf15c8b26",
         intel: "cc5703bc4984e73dd66b18c3623fa1d576e53fda9c33de335f42b3596de01786"

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
end
