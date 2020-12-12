cask "kekadefaultapp" do
  version "1.1.22,1.0.1-r.7"
  sha256 "64a9ba60d5fdf7e8e72b21e9bdec0c2804b07f83599de61368f2ecebdcb65eb1"

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaDefaultApp.v#{version.after_comma}.zip"
  appcast "https://github.com/aonez/Keka/releases.atom"
  name "KekaDefaultApp"
  desc "File archiver"
  homepage "https://github.com/aonez/Keka/wiki/Default-application"

  app "KekaDefaultApp.app"
end
