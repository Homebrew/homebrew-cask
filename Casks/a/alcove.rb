cask "alcove" do
  version "1.3.9"
  sha256 "92415d22564d6596e54b1f44d2354390c75eeb763af837efbcc97cc8576cfc81"

  url "https://github.com/henrikruscon/alcove-releases/releases/download/#{version}/Alcove.zip",
      verified: "github.com/henrikruscon/alcove-releases/"
  name "Alcove"
  desc "Utility to add Dynamic Island like features to notch area"
  homepage "https://tryalcove.com/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Alcove.app"

  zap trash: [
    "~/Library/Caches/com.henrikruscon.Alcove",
    "~/Library/HTTPStorages/com.henrikruscon.Alcove",
    "~/Library/Preferences/com.henrikruscon.Alcove.plist",
  ]
end
