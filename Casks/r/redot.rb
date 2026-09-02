cask "redot" do
  version "26.2"
  sha256 "128cb7bca69b95a3998a84e72b0990a302ce5b1919dfb56cfdc709c2c87925ae"

  url "https://github.com/Redot-Engine/redot-engine/releases/download/redot-#{version}-stable/Redot_v#{version}-stable_macos_universal.zip"
  name "Redot Engine"
  desc "Multi-platform 2D and 3D game engine"
  homepage "https://redotengine.org/"

  livecheck do
    url :url
    regex(/^redot-v?(\d+(?:\.\d+)+)[._-]stable$/i)
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Redot.app"
  binary "#{appdir}/Redot.app/Contents/MacOS/Redot", target: "redot"

  uninstall quit: "org.redotengine.redot"

  zap trash: [
    "~/Library/Application Support/Redot",
    "~/Library/Caches/Redot",
    "~/Library/Saved Application State/org.redotengine.redot.savedState",
  ]
end
