cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.11"
  sha256 arm:   "374aca8d80517e21993b013448f28f40cc6824547c004d6fa0610fc699068391",
         intel: "e423b8b3564c4d9928c928528647e1b8db55666ab36c5fce11b343c3b675d68e"

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
