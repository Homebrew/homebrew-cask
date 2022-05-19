cask "iridium" do
  version "2022.04.100"
  sha256 "04bb2dd6ebbdcc3f4f25a53610d074be413dcbb1c446a3e658751a34a6f382b2"

  url "https://downloads.iridiumbrowser.de/macos/#{version}/iridium-browser_#{version}_macos.dmg"
  name "Iridium Browser"
  desc "Web browser focusing on security and privacy"
  homepage "https://iridiumbrowser.de/"

  livecheck do
    url "https://iridiumbrowser.de/downloads/macos"
    regex(/iridium-browser[._-]?v?(\d+(?:\.\d+)+)[._-]?macos\.dmg/i)
  end

  app "Iridium.app"

  zap trash: [
    "~/Library/Application Support/Iridium",
    "~/Library/Caches/de.iridiumbrowser",
    "~/Library/Preferences/de.iridiumbrowser.plist",
    "~/Library/Saved Application State/de.iridiumbrowser.savedState",
  ]
end
