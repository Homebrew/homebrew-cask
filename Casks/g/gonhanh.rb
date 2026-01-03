cask "gonhanh" do
  version "1.0.97"
  sha256 "331c46cf1483a28fa517bdfb83909f1408355cb9fbe3ab93a0c942b7169ed3ba"

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
