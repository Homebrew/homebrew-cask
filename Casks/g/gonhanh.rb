cask "gonhanh" do
  version "1.0.109"
  sha256 "a7299b587d227ffcf7283b79fbb6bdfd0408be1ed4a21bff82d25cc21a4ac9ea"

  url "https://github.com/khaphanspace/gonhanh.org/releases/download/v#{version}/GoNhanh.dmg"
  name "Gõ Nhanh"
  desc "Vietnamese input method engine"
  homepage "https://github.com/khaphanspace/gonhanh.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "GoNhanh.app"

  uninstall quit: "org.gonhanh.GoNhanh"

  zap trash: [
    "~/Library/Application Support/GoNhanh",
    "~/Library/Preferences/space.khaphan.gonhanh.plist",
  ]
end
