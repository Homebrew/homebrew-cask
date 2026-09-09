cask "mactap" do
  version "2.1.1"
  sha256 "549f46c20e1bf5152759ee71f6151861c74666ed6a7e20cb69b77d7eac45c42c"

  url "https://github.com/jaskirat1616/mactap-app/releases/download/v#{version}/MacTap-#{version}.dmg"
  name "MacTap"
  desc "Turn MacBook chassis knocks into shortcuts"
  homepage "https://mactap.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MacTap.app"

  zap trash: "~/Library/Preferences/app.mactap.MacTap.plist"
end
