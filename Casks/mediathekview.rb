cask "mediathekview" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-as"

  version "13.8.1"

  if Hardware::CPU.intel?
    sha256 "1f614242ee44c81fd3b690929cb340a76d1d3cc262652a2bd4b8afc7c9a4b4a8"
  else
    sha256 "af60325e99078a35bc949e59fc3bd6964c9305e9bd9fd1e65900a9cf152a0999"
  end

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
