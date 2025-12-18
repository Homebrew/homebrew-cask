cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.11.6"
  sha256 arm:   "75802210d4cc75ab7ac2eb1cef5269c14ba8156b61ddaaad3909b2164344efca",
         intel: "db0bcb8c61ae9fb5c4e6bbca6c8e4f1b3234e0e077f4498adaa37d24629bb937"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
