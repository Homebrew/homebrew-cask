cask "amitv87-pip" do
  version "2.12"
  sha256 "542599fe2fef62fad607d6c57f9f7433e1e7356bd052841588296c6643557830"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end
