cask "cave-story" do
  language "en", default: true do
    on_mojave :or_older do
      version "0.0.9,1"
      sha256 "a88f053fabe416a4eed5dd98da272ba2ca3fc2caa90f22a58beb85458ef16ff0"

      livecheck do
        skip "Legacy version"
      end
    end
    on_catalina :or_newer do
      version "0.1.0,2"
      sha256 "30e32c5123b984d0733a1e1e510a1255d511e69b694c4227119c69161ba1dc55"

      livecheck do
        url "https://www.cavestory.org/downloads/"
        regex(/href=.*?cavestory[._-]?v?(\d{3})[._-]?r(\d+)\.dmg/i)
        strategy :page_match do |page, regex|
          page.scan(regex).map { |match| "#{match[0].chars.join(".")},#{match[1]}" }
        end
      end
    end

    url "https://www.cavestory.org/downloads/cavestory_#{version.csv.first.no_dots}_r#{version.csv.second}.dmg"

    # Renamed for consistency: app name is different in the Finder and in a shell.
    app "Doukutsu.app", target: "Cave Story.app"
  end
  language "ja" do
    on_mojave :or_older do
      version "0.0.9"
      sha256 "cf0f73cbf797f3d24bf2aada970438e82c2e851ae262355286421d3464a18a3a"

      livecheck do
        skip "Legacy version"
      end
    end
    on_catalina :or_newer do
      version "0.2.0"
      sha256 "fb90f6851e0351c0f8bce52f0cd22f2b26007b9f98543311377c41f6cabb472a"

      livecheck do
        url "https://www.nakiwo.com/software.html"
        regex(/href=.*?doukutsu[._-]?v?(\d+(?:[._]\d+)*)\.dmg/i)
        strategy :page_match do |page, regex|
          page.scan(regex).map { |match| match[0].tr("_", ".") }
        end
      end
    end

    url "https://www.nakiwo.com/downloads/doukutsu#{version.dots_to_underscores}.dmg",
        verified: "nakiwo.com/downloads/"

    # Renamed for consistency: app name is different in the Finder and in a shell.
    app "Doukutsu.app", target: "洞窟物語.app"
  end

  name "Cave Story"
  name "Doukutsu"
  name "洞窟物語"
  desc "Action-adventure game reminiscent of classic 8- and 16-bit games"
  homepage "https://www.cavestory.org/"

  zap trash: "~/Library/Preferences/com.nakiwo.Doukutsu.plist"
end
