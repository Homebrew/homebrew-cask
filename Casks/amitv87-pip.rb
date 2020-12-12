cask "amitv87-pip" do
  version "1.40"
  sha256 "8df2ae6c3a4bdfadeb477d598d0c09def97d78675ebd8f8af83ab476641b2d16"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  appcast "https://github.com/amitv87/PiP/releases.atom"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end
