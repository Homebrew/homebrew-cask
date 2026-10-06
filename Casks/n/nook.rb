cask "nook" do
  version "1.2.0"
  sha256 "ac59984ebe1f836791693d5641e954172aba60f97fc22316bfd59bec0450dca6"

  url "https://github.com/nook-browser/Nook/releases/download/v#{version}/Nook-v#{version}.dmg"
  name "Nook"
  desc "Minimal browser with a sidebar-first design"
  homepage "https://browsewithnook.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :tahoe

  app "Nook.app"

  zap trash: [
    "~/Library/Application Support/Nook",
    "~/Library/Caches/io.browsewithnook.nook",
    "~/Library/Preferences/io.browsewithnook.nook.plist",
  ]
end
