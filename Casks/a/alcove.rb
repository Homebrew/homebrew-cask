cask "alcove" do
  version "1.3.4"
  sha256 "3fa630bbe4e4e2af54a556606ae76f32899d526d33dbedebd91989d9b979cb76"

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
