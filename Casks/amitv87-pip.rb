cask "amitv87-pip" do
  version "2.00"
  sha256 "f8ed6b7b1c8e800c5ca5b571f512edbbf21bd9641179e6e4cce7e6605b16f7f4"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end
