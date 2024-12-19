cask "fujifilm-x-raw-studio" do
  version "1.25.1,bbh12c19"
  sha256 "b85a9eab7320a0c389c9c3dabc49f8cf95d041c0df4fa9dd3462212b602a6e64"

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

  depends_on macos: ">= :sierra"

  app "FUJIFILM X RAW STUDIO.app"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji/X RAW STUDIO",
    "~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist",
  ]
end
