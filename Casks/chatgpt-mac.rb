cask "chatgpt-mac" do
  arch arm: "arm64", intel: "x64"

  version "0.0.5"
  sha256 arm:   "e41a76560d78afd5000129aeb4d720c755bf916c7db32c81f608c5ee5bd3177a",
         intel: "f2c1bbe1e37836e9615e0061fd41d16c2ab16e60440aee3af4f62f8d346ec330"

  url "https://github.com/vincelwt/chatgpt-mac/releases/download/#{version}/ChatGPT-#{version}-#{arch}.dmg"
  name "ChatGPT for Mac"
  desc "ChatGPT living in the menubar of Mac"
  homepage "https://github.com/vincelwt/chatgpt-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ChatGPT.app"

  zap trash: [
    "~/Library/Caches/com.vincelwt.chatgptmac",
    "~/Library/Caches/com.vincelwt.chatgptmac.ShipIt",
    "~/Library/Preferences/com.vincelwt.chatgptmac.plist",
  ],
    rmdir: "~/Library/Application Support/chatgpt-mac"
end
