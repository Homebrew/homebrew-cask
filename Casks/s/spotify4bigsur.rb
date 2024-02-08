cask "spotify4bigsur" do
  version "1.1"
  sha256 "304752e6b373c9365205e03bd2ea3f116e555128ef793ea0b5a1f5e8cee28b19"

  url "https://github.com/fabiusBile/Spotify4BigSur/releases/download/#{version}/Spotify4BigSur.dmg"
  name "Spotify4BigSur"
  desc "Implements a Widget for Spotify in the Notification Center"
  homepage "https://github.com/fabiusBile/Spotify4BigSur"

  # Renamed for clarity: app name is inconsistent with its branding.
  app "SpotifyMain.app", target: "Spotify4BigSur.app"
end
