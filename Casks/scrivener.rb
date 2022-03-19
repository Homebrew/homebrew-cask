cask "scrivener" do
  version "3.2.3,14869"
  sha256 "2760233d150b765e8e965e6c618b324069f3ff274c69868eb91d8bd303bc8bb2"

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
