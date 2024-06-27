cask "nosleep" do
  version "1.5.1"
  sha256 "2dd5293c41a16a35deeaf903cc9f10092721b8869b69ef263231a73a4202cb5a"

  url "https://github.com/integralpro/nosleep/releases/download/#{version}/NoSleep-#{version}.dmg",
      verified: "github.com/integralpro/nosleep/"
  name "NoSleep"
  desc "Kernel extension that prevents sleep when the lid is closed"
  homepage "https://integralpro.github.io/nosleep/"

  disable! date: "2024-06-27", because: :no_longer_available

  depends_on macos: ">= :high_sierra"

  app "NoSleep.app"

  # No zap stanza required
end
