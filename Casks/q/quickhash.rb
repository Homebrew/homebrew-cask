cask "quickhash" do
  version "3.3.4,2510,01,11,2023"
  sha256 "d5b73524b0d62a7f100f7a6f976eaad98968f03f20f6d6b6c28040f9c255a884"

  url "https://www.quickhash-gui.org/download/quickhash-gui-v#{version.csv.first.dots_to_hyphens}-apple-osx/?wpdmdl=#{version.csv.second}"
  name "Quickhash"
  desc "Data hashing tool"
  homepage "https://www.quickhash-gui.org/"

  livecheck do
    url "https://www.quickhash-gui.org/downloads/?tax%5Bwpdmcategory%5D=osx/"
    regex(%r{
      dt_update_date[^>]*>\s*(\d+[-/]\d+[-/]\d+)\s*<.+?
      /quickhash(?:-gui)?[._-]v?(\d+(?:[.-]\d+)+)-apple-osx
      /\?(?:[^"' >]+?&)?wpdmdl=([^&"' >]+)
    }imx)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1].tr("-", ".")},#{match[2]},#{match[0].tr("-/", ",")}" }
    end
  end

  container nested: "Quickhash-GUI_#{version.csv.third}#{version.csv.fourth}#{version.csv.fifth}.dmg"

  app "Quickhash-GUI.app"

  zap trash: [
    "~/.Quickhash-GUI",
    "~/Library/Saved Application State/www.Quickhash-GUI.org.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
