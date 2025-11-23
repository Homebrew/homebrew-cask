cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.472.08.1"
  sha256 arm:   "33e6c5a74a991e4e214903eaed9268aebd0346f7f54f611f2d809bed670542b1",
         intel: "ca07e4227f6acc06f47706a3793c197475347fed019d71cf58923c15970f5129"

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
