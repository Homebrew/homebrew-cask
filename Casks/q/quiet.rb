cask "quiet" do
  version "2.1.2"
  sha256 "f3fbe187e6710bdda02172777173d0340dc5a97a502d07c3c817b2f7a2897555"

  url "https://github.com/TryQuiet/quiet/releases/download/%40quiet%2Fdesktop%40#{version}/Quiet-#{version}.dmg",
      verified: "github.com/TryQuiet/quiet/"
  name "Quiet"
  desc "Desktop app for Quiet"
  homepage "https://tryquiet.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet2"
end
