cask "betteraudio" do
  version "26.6.2"
  sha256 "5f7234ef92e612ec41062b09d554bea8fbbc856dc35efd5d75ee749a07998315"

  url "https://github.com/rokartur/BetterAudio/releases/download/#{version}/BetterAudio-#{version}.dmg"
  name "BetterAudio"
  desc "Per-app volume, EQ and audio device control"
  homepage "https://betteraudio.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "BetterAudio.app"

  zap trash: [
    "~/Library/Application Support/BetterAudio",
    "~/Library/Caches/pro.betteraudio.BetterAudio",
    "~/Library/HTTPStorages/pro.betteraudio.BetterAudio",
    "~/Library/Preferences/pro.betteraudio.BetterAudio.plist",
  ]
end
