cask "musico-online" do
  version "0.8.0"
  sha256 "d4ce78c65f852c1d607073653d91090f6b04b0f134fab461ab811e3cab73233c"

  url "https://github.com/ARYAN007H/Musico-online/releases/download/v#{version}-online/Musico.Online_#{version}_universal.dmg",
      verified: "github.com/ARYAN007H/Musico-online/"
  name "Musico Online"
  desc "Local-first desktop music player with an online catalog"
  homepage "https://aryanch007h.github.io/Musico/"

  livecheck do
    url :url
    regex(/^Musico\.Online[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg$/i)
  end

  app "Musico Online.app"

  zap trash: [
    "~/Library/Application Support/musico-online",
    "~/Library/Caches/musico-online",
    "~/Library/Preferences/io.github.aryan007h.MusicoOnline.plist",
    "~/Library/Saved Application State/io.github.aryan007h.MusicoOnline.savedState",
  ]
end
