cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.10"
  sha256 arm:   "159b89f383eda329696d2dc8dde997739b065051e76e955b412e4cc030fc4ca5",
         intel: "096d5d8ac8b5af4d820c4f66060ef18e615d1b3ea75357a152c26d8a2fc23b34"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
