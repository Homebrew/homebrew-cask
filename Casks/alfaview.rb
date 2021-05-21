cask "alfaview" do
  version "8.18.1"
  sha256 "0263c769a8c183b486a4eb1dbc16833a172abbfbb19b69ed9e34238d1ea05fa7"

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
