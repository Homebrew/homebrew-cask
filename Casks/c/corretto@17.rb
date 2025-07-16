cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.16.8.1"
  sha256 arm:   "195d31a1cd695e84bba41ddcf2989a3bc2017484ce89f3f359124ff3cef0dfa8",
         intel: "4c0f21e7f0bfa9a6580a10fac2dc6b2aa1a07c4c628dabe60c1666dc806db903"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
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
