cask "cryptomator" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.6"

  if Hardware::CPU.intel?
    sha256 "02b8ba1384d67fa507609500891461942e97297da69ccc718aab57fa96b83ae9"
  else
    sha256 "9c6db1941c64f7bd644d42b4b0502adfe75ef854e4ebe87d46f7c392cc4ab2b6"
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
