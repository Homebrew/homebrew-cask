cask "squadanimatorgaa" do
  version "1.0.4"
  sha256 "7e7c2f3eb637de07517a5b695ed20c9093fbab1a7f8ffb4af5167e19e60b2afa"

  url "https://www.squadanimator.com/downloads/SquadAnimatorGAA-OSX-#{version}.zip"
  name "SquadAnimator GAA"
  homepage "https://www.squadanimator.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SquadAnimatorGAA-OSX-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "SquadAnimatorGAA-#{version}.app"
end
