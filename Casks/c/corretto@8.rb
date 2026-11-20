cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.514.01.1"
  sha256 arm:   "280059a73ec38ea6ec2af308fb299e48253ba1fd4bdd1f859ca05c2032a469c2",
         intel: "1185cb36056d71240d48f99bc5db3e1dd6dc7548f6682cd7a35c84722662a7c3"

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
