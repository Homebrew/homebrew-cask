cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.33.1.1"
  sha256 arm:   "2387cbf13ed4e87c40f8dbcfe2f912afb92d09a1c17ef472fa7abaaad8c8b3f2",
         intel: "a12995cafceade7e8806b884a4dcf0ca0de4db93ec9a9ca2b6b4e31495f12665"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  zap :not_required
end
