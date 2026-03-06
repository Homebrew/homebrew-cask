cask "proxypin" do
  version "1.2.4"
  sha256 "8ae2652a4082e82091f3a44787e3917f769942283ef466f003d75347cd179109"

  url "https://github.com/wanghongenpin/proxypin/releases/download/v#{version}/proxypin-macos.dmg"
  name "ProxyPin"
  desc "Open source free capture HTTP(S) traffic software"
  homepage "https://github.com/wanghongenpin/proxypin"

  app "ProxyPin.app"

  zap trash: [
    "~/.config/proxypin",
    "~/Library/Preferences/com.example.proxypin.plist",
  ]
end
