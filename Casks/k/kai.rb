cask "kai" do
  version "1.6.2"
  sha256 "121dcc9ca9af011cfeb1924ae1d17d10231cfb9b147ab6b907cf37c9928846aa"

  url "https://github.com/SimonSchubert/Kai/releases/download/v#{version}/Kai-#{version}-macos.dmg",
      verified: "github.com/SimonSchubert/Kai/"
  name "Kai"
  desc "Cross-platform AI chat client with local LLM support"
  homepage "https://github.com/SimonSchubert/Kai"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :ventura"

  app "Kai.app"

  uninstall quit: "com.inspiredandroid.kai"

  zap trash: [
    "~/Library/Application Support/Kai",
    "~/Library/Caches/com.inspiredandroid.kai",
    "~/Library/HTTPStorages/com.inspiredandroid.kai",
    "~/Library/HTTPStorages/com.inspiredandroid.kai.binarycookies",
    "~/Library/Preferences/com.inspiredandroid.kai.plist",
    "~/Library/Saved Application State/com.inspiredandroid.kai.savedState",
  ]
end
