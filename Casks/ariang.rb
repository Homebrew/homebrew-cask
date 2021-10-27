cask "ariang" do
  version "1.2.3"
  sha256 "9aa1928a45f98316b1245d961faa5402fd39faf062f9a97a5b621d6380ea0002"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-x64.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
