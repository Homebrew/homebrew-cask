cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.422.05.1"
  sha256 arm:   "45fe10295e65f70d6ec46e3441509737d17e45d198c1f6b00b365367a3983909",
         intel: "7c803e594441d44e36d3462c059bdfa13879abe91f9ecd44be348e2f2ef2302f"

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
