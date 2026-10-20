cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.9.16"
  sha256 arm:   "53e5de6a6e9cfe783be54cb6343770e2487ad27803be67abb1eed9ecb2db8a53",
         intel: "dcb477f472d01cd9be2361015d123442a49ebaec38745341b5c6bc01bc5db96c"

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

  uninstall quit: "com.figma.agent"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.figma.desktop.sfl*",
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/HTTPStorages/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
