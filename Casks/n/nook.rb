cask "nook" do
  version "1.0.5"
  sha256 "00fb8ea2961ab70ace009f4fc5cc48ad13a3e8e7537582c8badaac0d04e03c7d"

  url "https://github.com/nook-browser/Nook/releases/download/v#{version}/Nook-v#{version}.dmg",
      verified: "github.com/nook-browser/Nook/"
  name "Nook"
  desc "Minimal browser with a sidebar-first design"
  homepage "https://browsewithnook.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sequoia"

  app "Nook.app"

  zap trash: [
    "~/Library/Application Support/Nook",
    "~/Library/Caches/io.browsewithnook.nook",
    "~/Library/Preferences/io.browsewithnook.nook.plist",
  ]
end
