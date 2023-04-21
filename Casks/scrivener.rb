cask "scrivener" do
  version "3.3.1,15588"
  sha256 "ac1665c7b72a2b88eb6678dd21c17b8ebb20e10cbde420ba5b24be38ad8492c8"

  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.csv.second}.zip",
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
