cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.9.3"

  if Hardware::CPU.intel?
    sha256 "5e81ddb6688c623e784bf59b57b8bebae3ddfa9a57f3988964e7588dee68d95b"
  else
    sha256 "386a544678a5cf0317623a37dcfc1629c16559fdb7c970d150d430e85e48dd87"
  end

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/"
    strategy :page_match do |page|
      stable_versions = JSON.parse(page).filter { |v| v["channel"] == "stable" }
      stable_versions.map { |v| v["name"] }
    end
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
