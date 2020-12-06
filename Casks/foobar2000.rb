cask "foobar2000" do
  version "2.2.13"
  sha256 "7455618cb826e72f0ff25474863b4ac4c5d9d14dde708539bf71d6cc5c57f7b1"

  url "https://www.foobar2000.org/files/d2ac068cecd7975427f150ffad31d058/foobar2000-v#{version}.dmg"
  name "foobar2000"
  desc "Is an advanced freeware audio player for the Windows platform"
  homepage "https://www.foobar2000.org/"

  app "foobar2000.app"
end
