cask "maccy" do
  version "0.14.0"
  sha256 "0a556bc017807561cf63ca9a82514e38a898a468ad7a05b3cf3e2a788ee2e7d3"

  # github.com/p0deje/Maccy/ was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast "https://github.com/p0deje/Maccy/releases.atom"
  name "Maccy"
  homepage "https://maccy.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      "~/Library/Preferences/org.p0deje.Maccy.plist"
end
