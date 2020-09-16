cask "ariang" do
  version "1.1.7"
  sha256 "740a0ac1841928f692c8d418d81ede4462f0cdca201eacce0ae3aa6619251815"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast "https://github.com/mayswind/AriaNg-Native/releases.atom"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
