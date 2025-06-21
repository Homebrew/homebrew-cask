cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.3.1"
  sha256 arm:   "44a9919d62e0b8920c8281075669c314dd7d053d8bd0f8fa88f52571ef78da2e",
         intel: "5483db1bcb45b5b9246cfda41d307cf70eec887bd9be212c668783c0119912a3"

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
