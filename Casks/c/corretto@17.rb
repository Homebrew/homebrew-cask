cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.21.1.2"
  sha256 arm:   "1efbae722a9252160db779fa1a6f3b6aa8cd8958dae33520099b85d5d81b16bb",
         intel: "a7f0a0d8ce4248a8ba44747eb68d2167dd7172ffd093185f64db12b632fd84d6"

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
