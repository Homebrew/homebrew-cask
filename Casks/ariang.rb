cask "ariang" do
  version "1.3.3"
  sha256 "fd6f86146bbec92a41636b864860fad905163eccb358b395dab605efed293fdb"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-x64.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
