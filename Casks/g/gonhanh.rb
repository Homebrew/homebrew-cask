cask "gonhanh" do
  version "1.0.163"
  sha256 "e2d385a4079bcfd700dd64cf0bbc416b4e570d15b759dbbd7cd4b681b2fd609e"

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
