cask "kami" do
  version "1.1.2"
  sha256 "a5ad6fad3cd068e76c12eee1f27b7bd047c137681ca424740cf4aac9defe7ec1"

  url "https://github.com/alexwidua/Kami/releases/download/#{version}/Kami.dmg",
    verified: "github.com/alexwidua/Kami/"
  name "Kami"
  desc "Origami Studio plugin to prompt JavaScript Patches"
  homepage "https://kami.alexwidua.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Kami.app"

  zap trash: [
    "~/Library/Caches/com.alexwidua.Kami",
    "~/Library/HTTPStorages/com.alexwidua.Kami",
    "~/Library/HTTPStorages/com.alexwidua.Kami.binarycookies",
    "~/Library/Preferences/com.alexwidua.Kami.plist",
  ]
end
