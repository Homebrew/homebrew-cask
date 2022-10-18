cask "alfaview" do
  version "8.54.0"
  sha256 "32f494a07c574318d2bc70f72b0f07d0f6ff62b1ae54056ebac387044edb48df"

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
