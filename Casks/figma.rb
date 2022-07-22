cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "116.2.3"

  if Hardware::CPU.intel?
    sha256 "a47315bef8e22bc4552be805f8509144cf56ae6e1323cdb0db74ae8e76109470"
  else
    sha256 "11cbd7ab52c302d8b601742daee0153e7a18b43ee241ba45dbe2ef28abfcba63"
  end

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
