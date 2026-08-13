cask "doxygen-app" do
  arch arm: "arm", intel: "intel"

  version "1.18.0"
  sha256 arm:   "59f42b0b991766380a6b0a42afca226e0fc172ef4525145eaef044e3a6663259",
         intel: "36440a181c89f48e56817d85210d55a6e7f4c60ee6d6238370e1f81089d4d3ab"

  url "https://www.doxygen.nl/files/Doxygen-#{version}-#{arch}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    regex(/href=.*?Doxygen[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :sequoia

  app "Doxygen.app"

  zap trash: [
    "~/Library/Preferences/org.doxygen.Doxywizard.plist",
    "~/Library/Preferences/org.doxygen.plist",
    "~/Library/Saved Application State/org.doxygen.savedState",
  ]
end
