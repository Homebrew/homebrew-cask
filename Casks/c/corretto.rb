cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "24.0.2.12.1"
  sha256 arm:   "94ec00147ab39f1a3c06050da8ed274fa2d9aed1dd94d154b8db2710a061c6bb",
         intel: "b2317bda88049adee74f402d7ffd1d5940b8a01355b8105324908c396d681476"

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
