cask "maccoffee" do
  version "2.0.0"
  sha256 "a165d94a517bc8464d839c56093ed0788afd2083f06eef80aebbf17de2c22243"

  url "https://github.com/rekurt/Mac-Coffee/releases/download/v#{version}/MacCoffee-#{version}.dmg"
  name "Mac Coffee"
  desc "Menu bar utility to keep a Mac awake"
  homepage "https://github.com/rekurt/Mac-Coffee"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mac Coffee.app"

  uninstall quit: "com.rekurt.maccoffee.direct"

  zap trash: "~/Library/Preferences/com.rekurt.maccoffee.direct.plist"
end
