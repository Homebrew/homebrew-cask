cask "iridium" do
  version "2023.09.116"
  sha256 "9bab04e71206fe5ab87a01f3f1af257ec0aa1098c357220582e0d27ce16733c3"

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
