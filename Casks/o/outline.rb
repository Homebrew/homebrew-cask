cask "outline" do
  version "1.3.1"
  sha256 :no_check

  url "https://desktop.getoutline.com/mac/dmg"
  name "Outline"
  desc "Desktop app for Outline"
  homepage "https://www.getoutline.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Outline.app"

  zap trash: [
    "~/Library/Application Support/Outline"
  ]
end
