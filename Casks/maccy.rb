cask "maccy" do
  version "0.17.0"
  sha256 "4124d36eadf67db0fd3d6cf1d378d2e7871aeb536254b922d5ae30de62787dbc"

  # github.com/p0deje/Maccy/ was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast "https://github.com/p0deje/Maccy/releases.atom"
  name "Maccy"
  desc "Clipboard manager"
  homepage "https://maccy.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Preferences/org.p0deje.Maccy.plist",
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
      ]
end
