cask "gonhanh" do
  version "1.0.165"
  sha256 "2d4c6dcd3422efc0573151415f7cad56bc0ef3f8423784047a50ad43091ffd1f"

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
