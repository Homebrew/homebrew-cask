cask "cryptomator" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.9"

  if Hardware::CPU.intel?
    sha256 "87969bf8cf56109ed0dd2456bebb0b31a8504877596b54072e0a53eef2332141"
  else
    sha256 "17e36423e2fd08a3aa82fc1ff51814e820bcfcde016260c8d0d5676e6680258c"
  end

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://cryptomator.org/downloads/mac/thanks/"
    regex(%r{href=.*?/Cryptomator[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
