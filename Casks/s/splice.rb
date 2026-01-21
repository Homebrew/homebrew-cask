cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.5"
  sha256 arm:   "8e498f9d2dd4b62d70f98a68589d60baed79502ce02d81189512f055e15593f6",
         intel: "e0799461728c509eb8561be166e1dca269a3ae38a3ad0358d221cf7273f83bc7"

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
