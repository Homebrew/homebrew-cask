cask "ariang" do
  version "1.2.2"
  sha256 "41649d4c218a623e37acf811ade94f9a6cc13350e84b2cb6d44314e5d7fd829f"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-x64.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
