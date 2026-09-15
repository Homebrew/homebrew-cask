cask "gonhanh" do
  version "1.0.162"
  sha256 "3b6470ff581fc269c08a1e94b0b5ae6e42b9481b7b8ffd2f8a496dae6cc0cd00"

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
