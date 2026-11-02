cask "scribus" do
  arch arm: "-arm64", intel: on_system_conditional(linux: "-x86_64")
  os linux: "-linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.6.7"
  sha256 arm:          "46729a3bdc0e432bd3cfbae508da401aeb9f7a0159a7a03f3fef1de631557ac6",
         intel:        "b059b246abf27c7a6ca6c5c0ad16e7e2df5303a0c62447935f2f155bae73e150",
         x86_64_linux: "aa2c175b7ff6676f5e94460635d16b233da11c11ec1a37648359808684df2fc2"

  on_macos do
    depends_on macos: :ventura

    app "Scribus.app"

    uninstall quit: "net.scribus"

    zap trash: [
      "~/Library/Application Support/Scribus",
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

  url "https://downloads.sourceforge.net/scribus/scribus/#{version.csv.first}/scribus-#{version.csv.second || version.csv.first}#{os}#{arch}.#{url_end}"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus"
    regex %r{url=.*?/v?(\d+(?:\.\d+)+)/scribus[._-]v?(\d+(?:[._]\d+)+)(?:-#{os}#{arch})?\.#{url_end}}i
    strategy :sourceforge do |page, regex|
      match = page.match(regex)
      next if match.blank?

      next match[1] if match[1] == match[2]

      "#{match[1]},#{match[2]}"
    end
  end
end
