cask "squadanimatorrugby" do
  version "1.0.2"
  sha256 "d001ddfc424ae3e47fd9fab318e4b85aa8af40a4a5755a99b717e79fa877c33b"

  url "https://www.squadanimator.com/downloads/SquadAnimatorRugbyOSX-#{version}.zip"
  name "SquadAnimator Rugby"
  homepage "https://www.squadanimator.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SquadAnimatorRugbyOSX-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "SquadAnimatorRugby-#{version}.app"
end
