cask "scrivener" do
  version "3.3,15561"
  sha256 "8d6a1d1e948e76f4b7677a0dacbb61700a7490d550eca820517b55f7b284d6f6"

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
