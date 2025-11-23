cask "scrivener" do
  version "3.5.1,17446,11"
  sha256 "b13b7ced13507d32b6f8ccf77c6928efea724a2c4595011721255f5f61e875c3"

  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_#{version.csv.third}_#{version.csv.second}.zip",
      verified: "scrivener.s3.amazonaws.com/"
  name "Scrivener"
  desc "Word processing software with a typewriter style"
  homepage "https://www.literatureandlatte.com/scrivener/overview"

  livecheck do
    url "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
    regex(/scrivener[._-](\d+(?:\.\d+)?+)[._-]/i)
    strategy :sparkle do |item, regex|
      "#{item.short_version},#{item.version},#{item.url[regex, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Scrivener.app"

  zap trash: [
    "~/Library/Application Support/Scrivener",
    "~/Library/Caches/com.literatureandlatte.scrivener*",
    "~/Library/Preferences/com.literatureandlatte.scrivener*.plist",
  ]
end
