cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.3"
  sha256 arm:   "3a6a77426d98ef18aa4affdce50365fdab0229ef7d6d161b9b0465afef4b76ad",
         intel: "fbc51b49deacb64736ab7f96a73613e77627f6668e6520f8547bfa0fca3cbda9"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
