cask "chiaki" do
  version "2.1.1"
  sha256 "d90aa5c7b0d5602165be845fa648474f084968109554d644544b64cd1399c6af"

  url "https://git.sr.ht/~thestr4ng3r/chiaki/refs/download/v#{version}/Chiaki-v#{version}-macOS-x86_64.dmg"
  name "Chiaki"
  desc "PlayStation remote play client"
  homepage "https://git.sr.ht/~thestr4ng3r/chiaki"

  livecheck do
    url :homepage
  end

  app "Chiaki.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]
end
