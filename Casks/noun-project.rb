cask "noun-project" do
  version "2.2.5"
  sha256 "3d852802f7fc86f35755985a93c82a14d5ac897da9065e1a05ad449fb64bc746"

  url "https://nounproject.s3.amazonaws.com/mac/Noun-Project-#{version}.dmg",
      verified: "nounproject.s3.amazonaws.com/"
  appcast "https://thenounproject.com/for-mac/feed/"
  name "Noun Project"
  homepage "https://thenounproject.com/"

  app "Noun Project.app"
end
