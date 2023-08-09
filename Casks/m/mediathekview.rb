cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.0.0"
  sha256 arm:   "6a50961dfd889c3cc6e3ad91e5bf6b575d44fe9440996339b432e158f347a746",
         intel: "76c2066dcf36ceabcd8235194fbef7a878a0628092aa38d0d40ee6e4bddce63f"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-#{arch}.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-#{arch}\.dmg}i)
  end

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
