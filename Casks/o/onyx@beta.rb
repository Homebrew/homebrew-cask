cask "onyx@beta" do
  version "5.1.0,260713"
  sha256 :no_check

  url "https://www.titanium-software.fr/download/27/OnyX.dmg"
  name "OnyX Beta"
  desc "Verify system files structure, run miscellaneous maintenance and more"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  livecheck do
    url :homepage
    regex(/>?\s*OnyX\s+v?(\d+(?:\.\d+)+).*?\((\d+)\)\s+for\s+[\w\s]*27/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "onyx"
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Preferences/com.titanium.OnyX.update.plist",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end
