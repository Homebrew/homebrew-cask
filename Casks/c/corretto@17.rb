cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.12.7.1"
  sha256 arm:   "66999d008024f6c3006e67de5789f56bb7d48c44d78e05e811b6e3d20d195a35",
         intel: "cd933da683c8a9e07b2d706f3442d4c87f44d7dc4fe4a1ce03ef7fe88d3321f1"

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
