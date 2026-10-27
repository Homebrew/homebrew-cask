cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.21.0.11"
  sha256 arm:   "e5e8d3833e3868bf67a8c28c8b381a22c2d2598b239a393abe9c7bfe01ae372e",
         intel: "93937b55eb7d721f8b151eac0f8ee897d9b02dd2e6ac673f08fd5a6f02137b98"

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
