cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.7"
  sha256 arm:   "2037d3956989d005963f7bd7573efd25dfe172a57792370b07b671b25df4debb",
         intel: "aa83f45b9142a54b4d8fde99addd69328dbc65103d6a73ee89b9c08574d26e90"

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
