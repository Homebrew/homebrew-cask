cask "alcove" do
  version "1.0.3"
  sha256 :no_check

  url "https://releases.tryalcove.com/latest/Alcove.dmg"
  name "Alcove"
  desc "Utility to add Dynamic Island like features to notch area"
  homepage "https://tryalcove.com/"

  livecheck do
    url "https://github.com/henrikruscon/alcove-releases.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Alcove.app"

  zap trash: [
    "~/Library/Caches/com.henrikruscon.Alcove",
    "~/Library/HTTPStorages/com.henrikruscon.Alcove",
    "~/Library/Preferences/com.henrikruscon.Alcove.plist",
  ]
end
