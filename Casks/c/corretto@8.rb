cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.512.09.1"
  sha256 arm:   "3f0c750068ff1c27e76663376b9c86ac7c7fb0d3e01d1526f1f64fe785739f4b",
         intel: "f89ec3936990c68fc3a3a2e9e3c599623c4490bc17f1043caba2943252e196a7"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
