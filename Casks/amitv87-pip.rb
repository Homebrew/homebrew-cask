cask "amitv87-pip" do
  version "2.11"
  sha256 "150340a76f856e939ef9c042aa9af6f232dfb21fe3b1a454ff4d7257567da063"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end
