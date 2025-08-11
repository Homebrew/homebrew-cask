cask "katrain" do
  version "1.17.0"
  sha256 "fe4594e286d94e46e0adb64616cbba910f65285ae5be27e326f07d8d532acfa3"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrain-#{version}.dmg"
  name "KaTrain"
  desc "Go/Baduk/Weiqi playing and teaching app with AI analysis"
  homepage "https://github.com/sanderland/katrain"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KaTrain.app"

  zap trash: [
    "~/.katrain",
    "~/Library/Application Support/KaTrain",
    "~/Library/Preferences/org.katrain.KaTrain.plist",
  ]
end
