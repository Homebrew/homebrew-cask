cask "amitv87-pip" do
  version "1.50"
  sha256 "ac8506a315f58addd4cfe1f6518a4987f93606e11157681de51031e66a072c98"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end
