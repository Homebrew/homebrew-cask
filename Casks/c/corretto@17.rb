cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.13.11.1"
  sha256 arm:   "dfc929ddc533472052132a88ad292aaf380f5afeb1b39ecaa8a776daecb51d99",
         intel: "ce512f43846ee37662f4f92c4d6c155ff59734f0116d21f89a5f956ebe815b0c"

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
