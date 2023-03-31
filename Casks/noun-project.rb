cask "noun-project" do
  version "2.2.5"
  sha256 "3d852802f7fc86f35755985a93c82a14d5ac897da9065e1a05ad449fb64bc746"

  url "https://nounproject.s3.amazonaws.com/mac/Noun-Project-#{version}.dmg",
      verified: "nounproject.s3.amazonaws.com/"
  name "Noun Project"
  desc "Icon manager"
  homepage "https://thenounproject.com/"

  livecheck do
    url "https://thenounproject.com/for-mac/feed/"
    strategy :sparkle, &:short_version
  end

  app "Noun Project.app"
end
