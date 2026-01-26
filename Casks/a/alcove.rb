cask "alcove" do
  version "1.5.1"
  sha256 "321c2d403b8328fe2f2cfbcec527bda58d96fff747a651e5bba62fc5fb3034e8"

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
