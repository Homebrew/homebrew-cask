cask "alcove" do
  version "1.0.3"
  sha256 "3f1c1f3400421d0ebbffa0aede126e2476d9ab72d12b06cbcebbe7c6c59a5fca"

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
