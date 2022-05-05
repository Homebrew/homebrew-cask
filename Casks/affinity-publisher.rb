cask "affinity-publisher" do
  version "1.10.5"
  sha256 :no_check

  url "https://store.serif.com/download/7ef252/"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Affinity Publisher.app"

  zap trash: [
    "~/Library/Application Support/Affinity Publisher",
    "~/Library/Caches/com.seriflabs.affinitypublisher",
  ]
end
