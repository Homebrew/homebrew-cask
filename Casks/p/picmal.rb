cask "picmal" do
  version "1.5.5"
  sha256 "c40684fe21bbd404cf082aafb71bf50891d084f36b553857e6b4bad52b320f53"

  url "https://github.com/albertogalca/picmal-releases/releases/download/v#{version}/Picmal.dmg",
      verified: "github.com/albertogalca/picmal-releases/"
  name "Picmal"
  desc "Media converter and compressor"
  homepage "https://picmal.app/"

  depends_on macos: :sequoia

  app "Picmal.app"

  zap trash: [
    "~/Library/Application Support/com.albertogallego.picmal",
    "~/Library/Caches/com.albertogallego.picmal",
    "~/Library/Caches/SentryCrash/Picmal",
    "~/Library/HTTPStorages/com.cantimplorastudio.picmal",
    "~/Library/Preferences/com.albertogallego.picmal.plist",
  ]
end
