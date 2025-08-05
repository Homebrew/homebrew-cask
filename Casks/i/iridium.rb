cask "iridium" do
  version "2023.09.116"
  sha256 "0302d750c4baf5deef01e802045750e416f74ccb397aac4ac49cc21df2d8fdb8"

  url "https://downloads.iridiumbrowser.de/macos/#{version}/iridium-browser_#{version}_macos_universal.dmg"
  name "Iridium Browser"
  desc "Web browser focusing on security and privacy"
  homepage "https://iridiumbrowser.de/"

  deprecate! date: "2024-11-03", because: :discontinued

  depends_on macos: ">= :catalina"

  app "Iridium.app"

  zap trash: [
    "~/Library/Application Support/Iridium",
    "~/Library/Caches/de.iridiumbrowser",
    "~/Library/Preferences/de.iridiumbrowser.plist",
    "~/Library/Saved Application State/de.iridiumbrowser.savedState",
  ]
end
