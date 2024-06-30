cask "mater" do
  version "1.0.10"
  sha256 "613dba1cd8ca8dee74b30a456d3d2cb87896020b5305d6ff25f5f324499c4ee7"

  url "https://github.com/jasonlong/mater/releases/download/#{version}/Mater-darwin-x64.zip"
  name "Mater"
  desc "Menubar pomodoro app"
  homepage "https://github.com/jasonlong/mater"

  app "Mater-darwin-x64/Mater.app"

  zap trash: [
    "~/Library/Application Support/mater",
    "~/Library/Preferences/com.electron.mater.plist",
    "~/Library/Saved Application State/com.electron.mater.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
