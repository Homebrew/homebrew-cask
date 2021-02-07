cask "flinto" do
  version "28.0"
  sha256 "5aec57054098df2f8cc13c505b11c204ccaae97657726e172616f46b1712cd32"

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name "Flinto"
  desc "The App Design App"
  homepage "https://www.flinto.com/"

  depends_on macos: ">= :high_sierra"

  app "Flinto.app"
end
