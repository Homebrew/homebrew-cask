cask "mediathekview" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-as"

  version "13.9.0"

  if Hardware::CPU.intel?
    sha256 "5805aaff8af84bad15e8180b102a93418057d5726dc7d66217ffe266e34e4ba5"
  else
    sha256 "627498a86405e1750ab6b42395ed56d99e56bb0cc24d3c92dde0302b607c50b1"
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
