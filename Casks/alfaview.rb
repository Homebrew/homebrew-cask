cask "alfaview" do
  version "8.16.0"
  sha256 "3464f7be79857e90f6739a9248543aba6679e85c5e3211bf0f929390645e139e"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    strategy :page_match
    regex(/alfaview-mac-production-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
