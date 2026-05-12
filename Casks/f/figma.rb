cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.12"
  sha256 arm:   "1bafcc9609c005dc97c89f3705785c95be38f8ca06ca0e2ef0bca2b1ba96e78a",
         intel: "83859bb0564334f82f2eadd8f782e6aa464260cc2a8a82becc112a3bbb5a522b"

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
  depends_on :macos

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
