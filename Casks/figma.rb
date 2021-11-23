cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "105.2.0"

  if Hardware::CPU.intel?
    sha256 "acf6f027a2828135060d5aa1735999241646d7f368c8eb7d0d70ce4cfe4be8d9"
  else
    sha256 "aec2299c350fc094d2397d71b414405ed71d0f58017ff2a7624a77d11f18a9bb"
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
