cask "pixel-shift-combiner" do
  version "1.7.0,1070,f1127ehf"
  sha256 "65fe50e8929a0efdf13f599cdce7fb7421d9f59ed54e08a26c2feceab2ca7a15"

  url "https://dl.fujifilm-x.com/support/software/pixel-shift-combiner-mac#{version.csv.second}-#{version.csv.third}/FUJIFILM_PixelShiftCombiner#{version.csv.second}.pkg"
  name "Fujifilm Pixel Shift Combiner"
  desc "Tool to tether and combine photos for Fujifilm cameras with IBIS function"
  homepage "https://www.fujifilm-x.com/en-us/support/download/software/pixel-shift-combiner/"

  livecheck do
    url :homepage
    regex(%r{Mac\sVersion:\s*v?(\d+(?:\.\d+)+).*href=.*?pixel-shift-combiner-mac(\d+)[._-]([a-z0-9]+)/}im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  pkg "FUJIFILM_PixelShiftCombiner#{version.csv.second}.pkg"

  uninstall pkgutil: "com.fujifilm.denji.PIXEL-SHIFT-COMBINER",
            delete:  "/Applications/Pixel Shift Combiner.app"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji/*Pixel Shift Combiner",
    "~/Library/Preferences/com.fujifilm.denji.PIXEL-SHIFT-COMBINER.plist",
  ]
end
