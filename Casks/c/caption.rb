cask "caption" do
  version "2.0.1"
  sha256 "bc3c2383ca3be4fb64adc5c8d97af2e372c163272132527db0b4ee5ab6a43605"

  url "https://github.com/gielcobben/caption/releases/download/v#{version}/caption-#{version}-mac.zip",
      verified: "github.com/gielcobben/caption/"
  name "Caption"
  desc "Finds and sets up subtitles automatically"
  homepage "https://getcaption.co/"

  deprecate! date: "2024-07-09", because: :unmaintained

  app "Caption.app"

  zap trash: [
    "~/Library/Application Support/Caption",
    "~/Library/Preferences/com.electron.caption.helper.plist",
    "~/Library/Preferences/com.electron.caption.plist",
    "~/Library/Saved Application State/com.electron.caption.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
