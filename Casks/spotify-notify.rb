cask "spotify-notify" do
  version "0.4.0"
  sha256 :no_check

  url "https://github.com/nahive/spotify-notify/releases/download/0.4.0/Notify.app.zip"
  name "Spotify Notify"
  desc "macOS notifications for Spotify"
  homepage "https://github.com/nahive/spotify-notify"

  app "Notify.app"
end
