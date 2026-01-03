cask "clipaste" do
  version "1.0.1"
  sha256 "9f4106c8ddd27fa34cc9e4533262798d5f44282d13a7dfc965bbeb8944f9f885"

  url "https://www.ntwind.com/files/Clipaste_#{version}-mac.dmg"
  name "Clipaste"
  desc "Privacy-first clipboard manager with searchable history and drag-n-drop"
  homepage "https://www.ntwind.com/cross-platform/clipaste.html"

  livecheck do
    url "https://www.ntwind.com/download/Clipaste_latest-mac.dmg"
    strategy :header_match
    regex(/Clipaste_(\d+(?:\.\d+)*)-mac\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Clipaste.app"
end
