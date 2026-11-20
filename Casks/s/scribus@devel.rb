cask "scribus@devel" do
  arch arm: "-arm64", intel: on_system_conditional(linux: "-x86_64")
  os linux: "-linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.7.4"
  sha256 arm:          "fd1cacd7bd96456c0a7eb5fb3f75e84aa5d630546632bad898f12eb31d3dc10d",
         intel:        "0ad7c4d8239c7ae39efdaac4d73700adbfc721ae8d0ef58f52cee3e8b91441da",
         x86_64_linux: "52a57b01aff00cf65c04cf3fa5ff83897c0ffc501c04b4b01c14fad3da928b0e"

  on_macos do
    depends_on macos: :ventura

    app "Scribus-#{version}.app"

    zap trash: [
      "~/Library/Application Support/Scribus",
      "~/Library/Preferences/net.scribus.plist",
      "~/Library/Preferences/Scribus",
      "~/Library/Saved Application State/net.scribus.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "scribus-#{version.csv.second || version.csv.first}-linux-x86_64.AppImage", target: "Scribus.AppImage"

    zap trash: [
      "~/.config/scribus",
      "~/.local/share/scribus",
    ]
  end

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version.csv.first}/scribus-#{version.csv.second || version.csv.first}#{os}#{arch}.#{url_end}"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus-devel"
    regex %r{url=.*?/v?(\d+(?:\.\d+)+)/scribus[._-]v?(\d+(?:[._]\d+)+)(?:-#{os}#{arch})?\.#{url_end}}i
    strategy :sourceforge do |page, regex|
      match = page.match(regex)
      next if match.blank?

      next match[1] if match[1] == match[2]

      "#{match[1]},#{match[2]}"
    end
  end
end
