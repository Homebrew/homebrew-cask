cask "squadanimatorsoccer" do
  version "1.0.2"
  sha256 "a525ffe4036d9c565dede5613123b0a348063ed34c3beb019d74a29a5e0c2101"

  url "https://www.squadanimator.com/downloads/SquadAnimatorSoccerOSX-#{version}.zip"
  name "SquadAnimator Soccer"
  homepage "https://www.squadanimator.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SquadAnimatorSoccerOSX-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "SquadAnimatorSoccer-#{version}.app"
end
