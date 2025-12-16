cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.5.1"
  sha256 arm:   "7253fdc6b8a7ae9bec896281235a03e032094861f3a0f98ea9326fda3d4fca47",
         intel: "68d5ea7af1b3e1a9965f8a9b9e33b17d163d1d09be6145568c99f073e38ac799"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/imputnet/helium-macos/"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
