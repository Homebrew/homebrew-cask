cask "freetube" do
  version "0.14.0"
  sha256 "469c182e78c2930bb1aab5fb862cd6dde9f0a49c25ac98611fa8bc58b18cb563"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac.dmg"
  name "FreeTube"
  desc "YouTube player focusing on privacy"
  homepage "https://github.com/FreeTubeApp/FreeTube"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)/i)
  end

  app "FreeTube.app"

  zap trash: [
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]
end
