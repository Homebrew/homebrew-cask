cask "pinpoint" do
  version "1.0.0"
  sha256 :no_check

  url "https://download.pinpoint.com/macos/Pinpoint.dmg"
  name "Pinpoint"
  desc "Workspace for shared document collaboration with context"
  homepage "https://pinpoint.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Pinpoint.app"
end
