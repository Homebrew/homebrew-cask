cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.2.0"

  if Hardware::CPU.intel?
    sha256 "81796a2da43a7ac8d8b37bc28775cbdf1eaa98a2e1d72dcfd9dea042eacc2c5f"
  else
    sha256 "183b97d29c2c1fb7f9d0f26ba5fdce4bea015a52460cab619b17369426757a48"
  end

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/notes"
    regex(/Postman\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/Postman",
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/Postman",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
