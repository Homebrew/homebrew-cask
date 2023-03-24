cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.0.36.1"
  sha256 arm:   "67c901c079c3435665a04f21c597351750080c6988ad0267ce65cb57c9a04ad5",
         intel: "3d6269c955eb847d9c52ea2ce911d15262febbb211be79d3130c592fc3ee72d2"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
