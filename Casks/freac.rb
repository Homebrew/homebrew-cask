cask "freac" do
  version "1.1.6"

  if MacOS.version <= :catalina
    sha256 "379d1b1fe7476e924bbecf2f06496709c6be75e2eb2d3de1d7b1b5fcbbf44f9e"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version.delete(",")}-macos10.dmg",
        verified: "github.com/enzo1982/freac/"

    livecheck do
      url "https://github.com/enzo1982/freac/releases/latest"
      strategy :page_match do |page|
        page.scan(%r{href=.*?/freac[._-](\d+(?:\.\d+)+)([A-z]*)-macos10\.dmg}i).map do |match|
          match[1].blank? ? match[0] : "#{match[0]},#{match[1]}"
        end
      end
    end
  else
    sha256 "634c86b1290d98f727d7b8a91e75045f381fa320ff814f8e440d83412dee2918"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version.delete(",")}-macos11.dmg",
        verified: "github.com/enzo1982/freac/"

    livecheck do
      url "https://github.com/enzo1982/freac/releases/latest"
      strategy :page_match do |page|
        page.scan(%r{href=.*?/freac[._-](\d+(?:\.\d+)+)([A-z]*)-macos11\.dmg}i).map do |match|
          match[1].blank? ? match[0] : "#{match[0]},#{match[1]}"
        end
      end
    end
  end

  name "fre:ac"
  desc "Audio converter and CD ripper"
  homepage "https://www.freac.org/"

  app "freac.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*",
    "~/Library/Preferences/org.freac.freac.plist",
    "~/Library/Saved Application State/org.freac.freac.savedState",
  ]
end
