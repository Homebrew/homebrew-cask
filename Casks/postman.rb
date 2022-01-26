cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.10.1"

  if Hardware::CPU.intel?
    sha256 "7e60422179809dce1a945c18725be231d83dd72ee013dc90ac7f57289f52a09f"
  else
    sha256 "996a4ec115f8cf3548af92d5f6f56a19c64c69e1a18a506433e9f3ec6e4441d6"
  end

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/download/latest/#{arch}"
    strategy :header_match
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
