cask "slicer@preview" do
  version :latest
  sha256 :no_check

  url "https://download.slicer.org/download?os=macosx&stability=nightly"
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "slicer"

  app "Slicer.app"

  zap trash: [
    "~/.config/www.na-mic.org",
    "~/Library/Application Support/NA-MIC",
    "~/Library/Preferences/org.slicer.slicer.plist",
    "~/Library/Preferences/Slicer.plist",
    "~/Library/Saved Application State/org.slicer.slicer.savedState",
  ]
end
