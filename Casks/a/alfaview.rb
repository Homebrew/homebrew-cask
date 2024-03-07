cask "alfaview" do
  version "9.9.1"
  sha256 "e75ec5c790fbc80aa825fc5b631c1456088c5f472a30e8627d40dde18ae3c424"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    regex(/alfaview[._-]mac[._-]production[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
