cask "scrivener" do
  version "3.4,16639,1013"
  sha256 "640703d1ad7cd3fcc5243d975995580c44acdd2293a9a94850a106d6a94156d0"

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
  depends_on macos: ">= :high_sierra"

  app "Scrivener.app"

  zap trash: [
    "~/Library/Application Support/Scrivener",
    "~/Library/Caches/com.literatureandlatte.scrivener*",
    "~/Library/Preferences/com.literatureandlatte.scrivener*.plist",
  ]
end
