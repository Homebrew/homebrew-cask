cask "codelite" do
  on_arm do
    on_monterey :or_older do
      arch arm: "arm64"

      version "17.2.1"
      sha256 "17704c86a98881ad08a77185707b0d26670a019645d359acbbb62f0bf13e7e52"

      livecheck do
        skip "Legacy version"
      end
    end
    on_ventura do
      arch arm: "arm64"

      version "17.6.0"
      sha256 "479058e8a32e6932198bf9bbbf141346252a6b5140f685d5584369500ccf4f28"

      livecheck do
        skip "Legacy version"
      end
    end
    on_sonoma do
      arch arm: "macOS_14.7.2-arm64"

      version "18.1.0"
      sha256 "ba61b4a13cadc0eb4a4a220bbece25cbccd23e16c1f29c55337a00d6cadc092a"

      livecheck do
        skip "Legacy version"
      end
    end
    on_sequoia :or_newer do
      arch arm: "macOS_15.6.1-arm64"

      version "18.2.0"
      sha256 "49f919ebed4cf42e49275dc89b5df12bc14cbd4b435f07dbcdaeddef4849a9df"

      livecheck do
        url "https://downloads.codelite.org/"
        regex(/CodeLite\s*(\d+\.\d+)((?:\.\d+)*)\s*-\s*(?:Latest|Stable)/i)
        strategy :page_match do |page, regex|
          match = page.match(regex)
          next if match.blank?

          "#{match[1]}#{match[2].presence || ".0"}"
        end
      end
    end
  end
  on_intel do
    arch intel: "x86_64"

    version "17.6.0"
    sha256 "e13755ab8edbc6e213269d73b206935c102d5b8ae2c0b3da24ae0a87cab22f57"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://downloads.codelite.org/codelite/#{version}/codelite-#{arch}.app.tar.gz"
  name "CodeLite"
  desc "IDE for C, C++, PHP and Node.js"
  homepage "https://codelite.org/"

  depends_on macos: ">= :monterey"

  app "codelite.app"

  zap trash: [
    "~/Library/Application Support/codelite",
    "~/Library/Preferences/codelite.plist",
  ]
end
