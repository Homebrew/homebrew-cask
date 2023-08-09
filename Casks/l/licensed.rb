cask "licensed" do
  version "1.5.1"
  sha256 :no_check

  url "https://amarsagoo.info/licensed/Licensed.dmg"
  name "Licensed"
  desc "Software license manager"
  homepage "https://amarsagoo.info/licensed/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Licensed.app"
end
