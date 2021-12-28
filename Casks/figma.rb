cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "107.1.0"

  if Hardware::CPU.intel?
    sha256 "cb5e73a2b3a6f347d6729e9a2585cfdd3ba2ad00edeec6f0edbbb7a57f14d172"
  else
    sha256 "8cbb43d9fb7aefc1a86d8ee0452b3b460cb051b8397de7160bf5e8ed9b15595e"
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
