cask "fujifilm-x-raw-studio" do
  version "1.28.0,10wt23dg"
  sha256 "9963268c999cd9b96c102fcf3673248a6f5c6dd3c428f9da69d8827e163fa634"

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.csv.first.no_dots}-#{version.csv.second}/XRawStudio#{version.csv.first.no_dots}.dmg"
  name "FUJIFILM X RAW STUDIO"
  desc "Convert RAW images captured with Fujifilm cameras"
  homepage "https://fujifilm-x.com/global/products/software/x-raw-studio/"

  livecheck do
    url "https://fujifilm-x.com/global/support/download/software/x-raw-studio/"
    regex(/Mac\s*Version\s*:\s*v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      version = page[regex, 1]
      next if version.blank?

      dir = page[%r{href=.*?x-raw-studio-mac(?:\d+)-([^/]+)/XRawStudio(?:\d+)\.dmg}i, 1]
      next if dir.blank?

      "#{version},#{dir}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "FUJIFILM X RAW STUDIO.app"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji/X RAW STUDIO",
    "~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist",
  ]
end
