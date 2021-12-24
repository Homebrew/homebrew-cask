cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.3.2,_2.3.2"

  if MacOS.version <= :mojave
    url "https://github.com/elfmz/far2l/releases/download/v#{version.csv.second}/far2l-#{version.csv.first}-alpha-MacOS-10.11.dmg"
    sha256 "eabf42a5cee8332d9f12ed0818453c729219db13368ec3834377ab818ff5ee1c"

    livecheck do
      url "https://github.com/elfmz/far2l/releases"
      regex(%r{/v([^/]+)/far2l-(\d+(?:\.\d+)+)-alpha-MacOS-10\.11\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  else
    url "https://github.com/elfmz/far2l/releases/download/v#{version.csv.second}/far2l-#{version.csv.first}-alpha-MacOS-10.15.dmg"
    sha256 "1058a7f7d0b4da0620faae424158bd5398ee1bb6647ce22e9e6e4a6dc1a6408b"

    livecheck do
      url "https://github.com/elfmz/far2l/releases"
      regex(%r{/v([^/]+)/far2l-(\d+(?:\.\d+)+)-alpha-MacOS-10\.15\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  end

  name "far2l"
  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
