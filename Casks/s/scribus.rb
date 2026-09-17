cask "scribus" do
  arch arm: "arm64", intel: on_system_conditional(linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.6.6"
  sha256 arm:          "0666a15e843575dea51233f874f2a840c73dc1cc5cbdf676fcff2e8978a71815",
         intel:        "69cc1b918747882395d984f0d0a3c06e965d06368299952e645b31925e284a99",
         x86_64_linux: "3919deb7d93ea46377c041074ebe48cba15258ed0a4fe07dde8290b5efb4442e"

  on_macos do
    on_intel do
      depends_on macos: :monterey
    end

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

  url "https://downloads.sourceforge.net/scribus/scribus/#{version.csv.first}/scribus-#{version.csv.second || version.csv.first}-#{os}#{arch}.#{url_end}"
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
