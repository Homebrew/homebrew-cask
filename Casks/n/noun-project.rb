cask "noun-project" do
  version "2.3"
  sha256 :no_check

  url "https://nounproject.s3.amazonaws.com/mac/NounProject.dmg",
      verified: "nounproject.s3.amazonaws.com/"
  name "Noun Project"
  desc "Icon manager"
  homepage "https://thenounproject.com/"

  livecheck do
    url "https://thenounproject.com/for-mac/feed/"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Noun Project.app"
end
