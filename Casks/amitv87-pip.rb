cask "amitv87-pip" do
  version "2.03"
  sha256 "b06ab33ce89bb24ea77539d31272a07e03a571f84df0eb97e4d542bb3b6c0bc2"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end
