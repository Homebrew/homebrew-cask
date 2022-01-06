cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.8.1"

  if Hardware::CPU.intel?
    sha256 "0aad720aa2fb9e92610b10732ee9679d9ed1c573b524318a8462206ef4dfb0c8"
  else
    sha256 "457ab5eebd2150d98fd7ba7b44b97910dcd5c2b388f4810b87c7e47b3834e1e4"
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
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Application Support/Postman",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/Postman",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
