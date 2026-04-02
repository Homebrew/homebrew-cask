cask "trabant" do
  version "1.0.0"
  sha256 "45c39af1a4ae88743d4bd6c0f99ebf318b90fe2776cad65a1af0b033500deaaa"

  url "https://github.com/gsdv/trabant/releases/download/v#{version}/Trabant.dmg"
  name "Trabant"
  desc "Local HTTP/HTTPS debugging proxy for iOS devices"
  homepage "https://github.com/gsdv/trabant"

  depends_on macos: ">= :sequoia"

  app "Trabant.app"

  zap trash: [
    "~/Library/Application Support/Trabant",
    "~/Library/Preferences/me.gsdv.Trabant.plist",
  ]
end
