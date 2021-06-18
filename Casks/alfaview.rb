cask "alfaview" do
  version "8.20.0"
  sha256 "2ade44aed45d7a80aad19cf4614dc7d2f9457ae6c6cb195b349e918bd62e344a"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    regex(/alfaview-mac-production-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
