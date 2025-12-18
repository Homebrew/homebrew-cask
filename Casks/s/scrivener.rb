cask "scrivener" do
  version "3.5.2,17487,11"
  sha256 "c925c4d3c44da3be479248603a42e2811352d21c97317c1324c1f7f707725758"

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
