cask "hex" do
  arch arm: "ARM64"

  version "0.1.33"
  sha256 :no_check

  url "https://hex-updates.s3.us-east-1.amazonaws.com/hex-latest.dmg",
      verified: "hex-updates.s3.us-east-1.amazonaws.com/"
  name "Hex"
  desc "Voice → Text"
  homepage "https://hex.kitlangton.com/"

  app "Hex.app"

  zap trash: [
    "~/Library/Application Support/com.kitlangton.Hex",
    "~/Library/Caches/com.kitlangton.Hex",
    "~/Library/HTTPStorages/com.kitlangton.Hex",
    "~/Library/Preferences/com.kitlangton.Hex.plist",
  ]
end
