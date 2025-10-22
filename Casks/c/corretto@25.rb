cask "corretto@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.1.8.1"
  sha256 arm:   "b1112d1991daed37952b22a866e0ff5cf951513edaded3c3b876636a12211d4c",
         intel: "68c40e36aaa53114818333e34d35599a49e252e5abc1b48604e4fc3ee1e869cc"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
