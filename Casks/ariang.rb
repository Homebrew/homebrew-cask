cask "ariang" do
  version "1.2.4"
  sha256 "717621c746c89caf8178f752efd71aaddd7f0f599c2f3128b0bec26bcc277db7"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-x64.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  app "AriaNg Native.app"
end
