cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.13.0.10"
  sha256 arm:   "0954e50c16a14a244f3ba154f98e5772d8157a24fbe3ff05929d392573889d2e",
         intel: "82dc8ad4b259b9f01825b12f82eab7797f66feed6ada7f0367e120d3f0b0539b"

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

  # No zap stanza required
end
