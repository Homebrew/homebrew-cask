cask "sococo" do
  version "6.12.2"
  sha256 :no_check

  url "https://s.sococo.com/rs/client/mac/sococo-client-mac.dmg"
  name "Sococo"
  desc "Online workplace client"
  homepage "https://app.sococo.com/a/download"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Sococo.app"

  zap trash: [
    "~/Library/Application Support/Sococo_RS",
    "~/Library/Caches/*sococo",
    "~/Library/Caches/Support/Sococo_R",
  ]

  caveats do
    requires_rosetta
  end
end
