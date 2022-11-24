cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.1.10.1"
  sha256 arm:   "c0543d0bb5e243873f66e8fba1c34bbdef7cafdbd8b631d0f10ce4f7db5db8c8",
         intel: "2fc2fb430fb999dcc3b0c8f0f56c424e22fe957d53cf6e27d56761fd82720ef7"

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
