cask "affinity-photo" do
  version "1.10.5"
  sha256 :no_check

  url "https://store.serif.com/download/075b51/"
  name "Affinity Photo"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Affinity Photo.app"

  zap trash: [
    "~/Library/Application Support/Affinity Photo",
    "~/Library/Caches/com.seriflabs.affinityphoto",
  ]
end
