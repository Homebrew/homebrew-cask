cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.2.3"
  sha256 arm:   "930bcd4782f2dbda7b6e5e3edfd0b884b3ebbbe1448e70422a3296713bb0ca25",
         intel: "4ee3afff4d48cbb908e05259b85654113308480a6727942617cdef6ac0d29e5c"

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
