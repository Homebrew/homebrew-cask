cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.9.1"
  sha256 arm:   "a8bb1df53340ae2f32b69d8bc918914260b1aef0bad2bfc9610642a5d10ff1eb",
         intel: "051f871ca1ab8b625907be0e43464378dd3acbd794bf041408a7a81fd6c8dd60"

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
