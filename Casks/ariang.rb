cask "ariang" do
  version "1.3.2"
  sha256 "e345ad070a5371a531612c530a11da2effa9820264b920206060189b20925dfa"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-x64.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
