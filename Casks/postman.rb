cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.1.2"

  if Hardware::CPU.intel?
    sha256 "1d8badc2b848a52549eafe8ac03bb85577a44c4ae9aae818b557314f62f698ca"
  else
    sha256 "2677a0027a714798a994b60298dec728a6b3e0357e9324b8fb93212d6f7bccb4"
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
