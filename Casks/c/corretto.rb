cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "24.0.1.9.1"
  sha256 arm:   "5f242b1dfe6b9c3f2dd268cee6063efa542ff6f3df5a3e8836f7dd42a763bccb",
         intel: "17fa85ebb99b2dd014d6cd21cf315f96bd14a52380dd7f9258b9a21002e9a13d"

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
