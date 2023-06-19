cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "eaa9e2df27a822d07dcd691b4a4cc4671b57ac94639351273b2c29939b765a7b",
         intel: "fa716ae6318456c74c8f34fd21818d137f436589276ca471f42154f28d018198"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Text translation tool"
  homepage "https://github.com/pot-app/pot-desktop"

  livecheck do
    url "https://github.com/pot-app/pot-desktop.git"
    strategy :git
    regex(/^(\d+(?:\.\d+)+)$/)
  end

  auto_updates true

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"

  zap trash: [
    "~/Library/Application Support/pot",
  ]
end
