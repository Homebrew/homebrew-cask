# typed: strict
# frozen_string_literal: true

cask "ezkulink" do
  version "1.0.0"
  sha256 "c2e15f7bf97800538067168c686cc7a79deb7e5430391062d624e332f6edee77"

  url "https://github.com/rinturaj/ezku.link/releases/download/v#{version}/ezku.link.dmg",
      verified: "github.com/rinturaj/ezku.link/"
  name "ezku.link"
  desc "Cast your screen to any browser — no app install needed on the viewer side"
  homepage "https://ezku.link/"

  depends_on macos: ">= :sonoma"

  app "ezku.link.app"

  zap trash: [
    "~/Library/Application Support/ezku.link",
    "~/Library/Caches/link.ezku.mac",
    "~/Library/Preferences/link.ezku.mac.plist",
  ]
end
