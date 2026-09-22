cask "scribus@devel" do
  arch arm: "arm64", intel: on_system_conditional(linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.7.3"
  sha256 arm:          "16d3592d1ba6b84dd226fce438c681b9fcadea9a39b460ac8dfadaf2ffc40938",
         intel:        "9b8564663b369b75c86d129f97daea7379fee95feeaacf34fd9bf063f7d9e79b",
         x86_64_linux: "9f99a84b461c1e6ba87b95cd17aca0b3a6949d4ab7b2090eff8b2b0ca56133c5"

  on_macos do
    on_intel do
      depends_on macos: :monterey
    end

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

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version.csv.first}/scribus-#{version.csv.second || version.csv.first}-#{os}#{arch}.#{url_end}"
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
