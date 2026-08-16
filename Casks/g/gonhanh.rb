cask "gonhanh" do
  version "1.0.160"
  sha256 "b49cb17f39c2b87b596a86b014bd5a32a019535e39aa59d3b65ccef9fd8b2780"

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
