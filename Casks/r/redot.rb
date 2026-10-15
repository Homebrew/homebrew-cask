cask "redot" do
  version "26.3"
  sha256 "bf781ae53dfaa4bbc6aadd21ebf2c69da3681ed85894d3ab2a816f0b03755a34"

  url "https://github.com/Redot-Engine/redot-engine/releases/download/redot-#{version}-stable/Redot_v#{version}-stable_macos_universal.zip"
  name "Redot Engine"
  desc "Multi-platform 2D and 3D game engine"
  homepage "https://redotengine.org/"

  livecheck do
    url :url
    regex(/^redot-v?(\d+(?:\.\d+)+)[._-]stable$/i)
    strategy :github_latest
  end

  depends_on :macos

  app "Redot.app"
  binary "#{appdir}/Redot.app/Contents/MacOS/Redot", target: "redot"

  uninstall quit: "org.redotengine.redot"

  zap trash: [
    "~/Library/Application Support/Redot",
    "~/Library/Caches/Redot",
    "~/Library/Saved Application State/org.redotengine.redot.savedState",
  ]
end
