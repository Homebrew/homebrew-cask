cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.3.1"

  if Hardware::CPU.intel?
    sha256 "d83b40d60538e46c5ba53f7e046ccb5ee097c6e740747eddaad0a8821d84fbcf"
  else
    sha256 "0f84aa54c458db435b6b171ef746c8ebb24bb44d43b21c041142b468c7efae6d"
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
