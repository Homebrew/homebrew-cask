cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.9"
  sha256 arm:   "601ad546cb73eaee77960bee9b41837df229a39aee045d4d8e3b2c70df4d7402",
         intel: "7231e2c69d333cec77718a4687948816284e89dc85afa655a59b8e1c30346702"

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

  auto_updates true
  depends_on macos: ">= :sierra"

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
