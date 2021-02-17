cask "ariang" do
  version "1.2.1"
  sha256 "797e0a0017f20afae8417baa7aeb2bba4723a33af3ed2c37d2495a06711ce3b4"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast "https://github.com/mayswind/AriaNg-Native/releases.atom"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
