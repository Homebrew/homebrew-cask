cask "pixel-shift-combiner" do
  version "1.5.0,1050,sgwn5e23"
  sha256 "4e734f66062e19c7272abd06e6d21b5bdc222090631e2691ce8b847975e5fce1"

  url "https://dl.fujifilm-x.com/support/software/pixel-shift-combiner-mac#{version.csv.second}-#{version.csv.third}/FUJIFILM_PixelShiftCombiner#{version.csv.second}.dmg"
  name "Fujifilm Pixel Shift Combiner"
  desc "Tool to tether and combine photos for Fujifilm cameras with IBIS function"
  homepage "https://fujifilm-x.com/en-us/support/download/software/pixel-shift-combiner/"

  livecheck do
    url :homepage
    regex(%r{Mac\sVersion:\s*v?(\d+(?:\.\d+)+).*href=.*?pixel-shift-combiner-mac(\d+)[._-]([a-z0-9]+)/}im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Pixel Shift Combiner.app"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji/*Pixel Shift Combiner",
    "~/Library/Preferences/com.fujifilm.denji.PIXEL-SHIFT-COMBINER.plist",
  ]
end
