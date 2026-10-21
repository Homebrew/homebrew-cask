# typed: strict
# frozen_string_literal: true

cask "ezkulink" do
  version "1.0.0"
  sha256 "98d822c480c8cd408dc9db8263d404e24b2bbecd5e8886bda056c0b033ec187d"

  url "https://github.com/rinturaj/ezku.link/releases/download/v#{version}/ezku.link-#{version}-macOS.dmg",
      verified: "github.com/rinturaj/ezku.link/"
  name "ezku.link"
  desc "Cast your screen to any browser — no app install needed on the viewer side"
  homepage "https://ezku.link/"

  depends_on macos: ">= :ventura"

  app "ezku.link.app"

  zap trash: [
    "~/Library/Application Support/ezku.link",
    "~/Library/Caches/link.ezku.mac",
    "~/Library/Preferences/link.ezku.mac.plist",
  ]
end
