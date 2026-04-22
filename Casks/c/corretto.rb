cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.3.9.1"
  sha256 arm:   "f4fccb2f96f979f848c133091f9624fb0dfdd97ba34318f2ab8cab568591fc58",
         intel: "4181f9b02d461d1e321ed651f92b9685444aa2ccbf434ea5fe9d15c7e57129ae"

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
