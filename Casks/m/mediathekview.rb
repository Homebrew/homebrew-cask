cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.1.0"
  sha256 arm:   "2ce01d9b0c37488e1443cde15597da79dc2f496995154f90a6d47e84bb36d779",
         intel: "e983180d0a88e7ba46930f1436153e970106b86a1d88f70ca7a111157a5e2ecf"

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
