cask "chiaki" do
  version "1.3.0"
  sha256 "1afb2054bffd7b174ba8ba2dbb56825855341962e6d71c83d75399045a446cbb"

  url "https://github.com/thestr4ng3r/chiaki/releases/download/v#{version}/Chiaki-v#{version}-macOS-x86_64.dmg"
  appcast "https://github.com/thestr4ng3r/chiaki/releases.atom"
  name "Chiaki"
  desc "Free and open-source PS4 remote play client"
  homepage "https://github.com/thestr4ng3r/chiaki"

  app "Chiaki.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]
end
