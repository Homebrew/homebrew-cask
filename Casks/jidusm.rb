cask "jidusm" do
  version "2.3.4"
  sha256 "b12792e3299a0c7956d099dd35a2e591fed20b9c7535e5ae3976b37f0231e5f9"

  url "https://jidu.wrste.com/jiduocr/%E6%9E%81%E5%BA%A6%E6%89%AB%E6%8F%8F-#{version}.dmg"
  name "jidusm"
  desc "Tool that supports scanning, text recognition and formula recognition"
  homepage "https://jidusm.wrste.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?%E6%9E%81%E5%BA%A6%E6%89%AB%E6%8F%8F-(\d+(?:\.\d+)*).dmg/i)
  end

  app "极度扫描.app"

  zap trash: [
    "~/Library/Application Support/jidusm",
    "~/Library/Logs/极度扫描",
    "~/Library/Preferences/com.wrste.jidusm.plist",
    "~/Library/Saved Application State/com.wrste.jidusm.savedState",
  ]
end
