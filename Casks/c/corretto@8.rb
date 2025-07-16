cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.462.08.1"
  sha256 arm:   "03400a040d4a0f0703b8dae9a0d1b0baac64879794d3d1a96d3bd749763d2f7c",
         intel: "e3fb39b360889aa1e354beb7b17f621ceec7e4759bcd3beb6582f753e2ecb0ac"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
  # No zap stanza required
end
