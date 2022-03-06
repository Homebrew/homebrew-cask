cask "gargoyle" do
  arch = Hardware::CPU.intel? ? "mac-intel" : "mac-arm64"

  version "2022.1"

  if Hardware::CPU.intel?
    sha256 "68448156799315e9204079559b451b6012f8e2d7e1368e32412b1f32f01157e4"
  else
    sha256 "46c286890de2fef2ce517f277a0fe3c88c7a75cc2283542e7b9c1d24353cddf8"
  end

  url "https://github.com/garglk/garglk/releases/download/#{version}/gargoyle-#{version}-#{arch}.dmg"
  name "Gargoyle"
  desc "IO layer for interactive fiction players"
  homepage "https://github.com/garglk/garglk"

  # We need to check all releases since not all releases are for macOS.
  livecheck do
    url "https://github.com/garglk/garglk/releases"
    strategy :page_match
    regex(/href=.*?gargoyle[._-]v?(\d+(?:\.\d+)+)-#{arch}\.dmg/i)
  end

  app "Gargoyle.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.garglk.launcher.sfl2",
    "~/Library/Preferences/com.googlecode.garglk.Launcher.plist",
    "~/Library/Saved Application State/com.googlecode.garglk.Launcher.savedState",
  ]
end
