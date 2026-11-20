cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.13.1.2"
  sha256 arm:   "59a76664d3de70042f4ac37d28a53eb2e3cf7aecc085a8e89ef1955c1e36cdee",
         intel: "9da41fc16749791b0b122da9566b56fa7a58b3835bf5be1ec3a0b44363e1ffe7"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  zap :not_required
end
