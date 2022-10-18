cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.0.36.1"
  sha256 arm:   "0f9241b93c4006df2b1dd0e6da1d428b2ba4523e4142e58ecbdbda75ed6c6b9a",
         intel: "c78428ce793f1a609637345ca438d56885cade971a04bed5caf4ff3fcfe09098"

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
