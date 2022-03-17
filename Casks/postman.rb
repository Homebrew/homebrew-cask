cask "postman" do
  arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"

  version "9.15.0"

  if Hardware::CPU.intel?
    sha256 "ed389581fd0ecd29d206a5f67093c29acd1fc8080e78d8ba86e7091d6145286a"
  else
    sha256 "f320129f8d354d6652d3b72e6148a51dca5255ff7f2356e1d03f8548bc73ba28"
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
