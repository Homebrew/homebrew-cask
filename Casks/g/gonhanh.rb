cask "gonhanh" do
  version "1.0.159"
  sha256 "56c4c3681f3b9d9ea9ec5eafae6545e44032de91e64bd5e8c77d1450a2b99511"

  url "https://github.com/khaphanspace/gonhanh.org/releases/download/v#{version}/GoNhanh.dmg"
  name "Gõ Nhanh"
  desc "Vietnamese input method engine"
  homepage "https://github.com/khaphanspace/gonhanh.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "GoNhanh.app"

  uninstall quit: "org.gonhanh.GoNhanh"

  zap trash: [
    "~/Library/Application Support/GoNhanh",
    "~/Library/Preferences/org.gonhanh.GoNhanh.plist",
    "~/Library/Preferences/space.khaphan.gonhanh.plist",
  ]
end
