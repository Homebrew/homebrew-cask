cask "jidusm" do
  version "2.3.4"
  sha256 "b12792e3299a0c7956d099dd35a2e591fed20b9c7535e5ae3976b37f0231e5f9"

  url "https://jidu.wrste.com/jiduocr/%E6%9E%81%E5%BA%A6%E6%89%AB%E6%8F%8F-#{version}.dmg"
  name "jidusm"
  desc "Powerful tool supports scanning, text recognition and formula recognition"
  homepage "https://jidusm.wrste.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?%E6%9E%81%E5%BA%A6%E6%89%AB%E6%8F%8F-(.*?).dmg/i)
  end

  app "极度扫描.app"

  zap trash: [
    "~/Library/Application Support/jidusm",
    "~/Library/Saved Application State/com.wrste.jidusm.savedState",
    "~/Library/Preferences/com.wrste.jidusm.plist",
    "~/Library/Logs/极度扫描",
    "~/Library/Application Support/CrashReporter/极度扫描_E5B919C3-BFD6-5FEC-88F5-36F9F7B3B6DE.plist",
  ]
end
