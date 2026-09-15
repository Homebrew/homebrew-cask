cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.12"
  sha256 arm:   "913e4f4b7d65bb3ee1393d9751b1f339750ca575e6c368b170a959902ceace86",
         intel: "8d31d76880d1c8771b7e0ce0d53d862331e08366619806ef28239d4da5278cad"

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
