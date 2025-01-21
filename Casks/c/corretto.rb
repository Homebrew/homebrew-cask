cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.2.7.1"
  sha256 arm:   "0ca62cf1d07213ca3d396360a7644e89fa11165df4061dc896e635d11d8bd24b",
         intel: "d4b6513aa0bbdd860b5c481369f898dd911789ffe53578ca24db82a06294060d"

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
