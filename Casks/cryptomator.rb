cask "cryptomator" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.7"

  if Hardware::CPU.intel?
    sha256 "653d67f20a3ef3e186a90338a5fa42653e1bc50ef40c31642708d0c204c05cdb"
  else
    sha256 "289420e809a9bad0feac4dc0372a709f6f37915109dbc32f979c291c11a9c0aa"
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
