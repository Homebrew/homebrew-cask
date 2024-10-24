cask "alfaview" do
  version "9.18.1"
  sha256 "c849574ff2badedbf2ffc427fe7c04f50a782453ab99fabc2d4974a86488a57f"

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
