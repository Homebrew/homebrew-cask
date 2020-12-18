cask "ogdesign-eagle" do
  version "1.11,3"
  sha256 "c504887564465c996e2a1ed5dfa5220dcae70bc601aa2c1606c8306cfa7751aa"

  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-build#{version.after_comma}.dmg",
      verified: "eagleapp.s3-accelerate.amazonaws.com/"
  appcast "https://eagle.cool/changelog"
  name "Eagle"
  homepage "https://eagle.cool/macOS"

  app "Eagle.app"
end
