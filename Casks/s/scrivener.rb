cask "scrivener" do
  version "3.3.3,15931"
  sha256 :no_check

  url "https://scrivener.s3.amazonaws.com/Scrivener.dmg",
      verified: "scrivener.s3.amazonaws.com/"
  name "Scrivener"
  desc "Word processing software with a typewriter style"
  homepage "https://www.literatureandlatte.com/scrivener/overview"

  livecheck do
    url "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Scrivener.app"

  zap trash: [
    "~/Library/Application Support/Scrivener",
    "~/Library/Caches/com.literatureandlatte.scrivener#{version.major}",
    "~/Library/Preferences/com.literatureandlatte.scrivener#{version.major}.plist",
  ]
end
