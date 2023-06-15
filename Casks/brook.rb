cask "brook" do
  version "20230601"
  sha256 "fec2c1f9f7f8b0672b9160876ae3434b1201005c272194cfd1bc65968aa27d0c"

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
