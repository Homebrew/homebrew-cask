cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12.9.1"
  sha256 arm:   "1296f85cde4cb9b95a7fef01811629deb2e56138609ebd89316db5914bf62bce",
         intel: "3d606353c6c3fd3974121a58e035680438969a685b69b903e87b7479e88645eb"

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
