cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.2.0"
  sha256 arm:   "1870dd359e48856f16a4656229e6a15ce5caeb22d877f6504a479afb95559b8d",
         intel: "bfebfce084372713483bd5cb884b6a3812e6e2e1c8ed5afad5f9ab1aff323d22"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-#{arch}.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-#{arch}\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
