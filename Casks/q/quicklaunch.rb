cask "quicklaunch" do
  version "1.0.1"
  sha256 "2fc73c8ec3cb4a3e5aa2fe1bb532ce475bda6a49e7fa5573aac715e2ee44bd9c"

  url "https://github.com/vorojar/QuickLaunch/releases/download/v#{version}/QuickLaunch-v#{version}.dmg"
  name "QuickLaunch"
  desc "Fast app launcher for macOS"
  homepage "https://github.com/vorojar/QuickLaunch"

  depends_on macos: ">= :sonoma"

  app "QuickLaunch.app"

  zap trash: [
    "~/Library/Application Support/QuickLaunch",
  ]
end
