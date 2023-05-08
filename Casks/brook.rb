cask "brook" do
  version "20230404.5.1"
  sha256 "bcf1375ef6f32343e0619fd5d5bc18917a6c6c4fc0c7be469a4e56d88f07746f"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  name "Brook"
  desc "Proxy/VPN client"
  homepage "https://github.com/txthinking/brook"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)$/i)
    strategy :github_latest
  end

  app "Brook.app"

  zap trash: "~/Library/Saved Application State/com.txthinking.brook.savedState"
end
