cask "alfaview" do
  version "8.31.0"
  sha256 "8c3e3b8ea8400e1a5965e639e03ffac98463891e8f3e5999292098cd97948b3d"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    regex(/alfaview-mac-production[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
