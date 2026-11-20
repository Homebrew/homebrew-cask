cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1.1.4"
  sha256 arm:   "c273c1965f3019f399854933557653e0243feeefffb6b94117ef47c37aee37cf",
         intel: "cff8abe8eaa407ee60468b85e5ed443dfafecf0b56137ea3052e51d15242130f"

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
