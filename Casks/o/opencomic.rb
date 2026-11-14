cask "opencomic" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "be0f4a04f075d206e37a071a6695aeec9552f29c04a3c8da2c632d77b9457e83",
         intel: "d50773af401a335637064edc0cac8a634174393b764a561aa83b8fdab837c7a8"

  url "https://github.com/ollm/OpenComic/releases/download/v#{version}/OpenComic-#{version}#{arch}.dmg"
  name "OpenComic"
  desc "Comic and Manga reader"
  homepage "https://opencomic.app/"

  depends_on :macos

  app "opencomic.app"

  uninstall quit: "org.opencomic.app"

  zap trash: [
    "~/Library/Application Support/OpenComic",
    "~/Library/Caches/opencomic",
    "~/Library/Preferences/org.opencomic.app.plist",
  ]
end
