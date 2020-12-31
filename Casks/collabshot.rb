cask "collabshot" do
  version "1.2.3.985"
  sha256 "a2d298dc2e6cf813c90c5dc64d9eaedf5ff4ef2e0ad45001d35ecefc511390c3"

  url "https://collabshot.s3.amazonaws.com/desktop/builds/mac/Collabshot_#{version}.dmg",
      verified: "collabshot.s3.amazonaws.com/"
  name "Collabshot"
  homepage "https://www.collabshot.com/"

  livecheck do
    url "https://api.collabshot.com/desktop/latest/mac"
    strategy :header_match
  end

  app "Collabshot.app"
end
