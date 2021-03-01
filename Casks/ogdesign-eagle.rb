cask "ogdesign-eagle" do
  version "2.0,2"
  sha256 "6f61e27f0cdae9c5ea1b08b6b97ec9d879306306f357299e7d0502978ac87257"

  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-build#{version.after_comma}.dmg",
      verified: "eagleapp.s3-accelerate.amazonaws.com/"
  appcast "https://eagle.cool/changelog"
  name "Eagle"
  homepage "https://eagle.cool/macOS"

  app "Eagle.app"
end
