cask "nosleep" do
  version "1.5.1"
  sha256 "2dd5293c41a16a35deeaf903cc9f10092721b8869b69ef263231a73a4202cb5a"

  # github.com/integralpro/nosleep/ was verified as official when first introduced to the cask
  url "https://github.com/integralpro/nosleep/releases/download/#{version}/NoSleep-#{version}.dmg"
  appcast "https://github.com/integralpro/nosleep/releases.atom"
  name "NoSleep"
  desc "Kernel extension that prevents sleep when the lid is closed"
  homepage "https://integralpro.github.io/nosleep/"

  depends_on macos: ">= :high_sierra"

  app "NoSleep.app"
end
