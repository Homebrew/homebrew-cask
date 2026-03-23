cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.2.9"
  sha256 arm:   "2cd398313b84675acb9767840eabe743a7880214f616b914b6686eb95bc17fde",
         intel: "1150b575f523f11152f3aea8eb1079b687e9632556fbef98e56dd56113e11543"

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
