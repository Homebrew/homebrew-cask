cask "scrivener" do
  version "3.3.1,15566"
  sha256 "45c779bc41ecd4c8ef5812d050865ba4757b896f64c1dafb20c2ef907273d8fc"

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
