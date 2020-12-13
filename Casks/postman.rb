cask "postman" do
  version "7.36.0"
  sha256 "b22b2e737bf3fa64ba81d2dca08d1363a69b1445d0a5b7781b7a681ca53feb08"

  url "https://dl.pstmn.io/download/version/#{version}/osx64",
      verified: "dl.pstmn.io/download/version/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.pstmn.io/download/latest/osx"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

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
