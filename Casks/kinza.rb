cask "kinza" do
  version "6.8.1"
  sha256 "66297d79948cb2d34f4885531a3ee2a9435da1e4182188b93004d8cd8f8993d9"

  url "https://d7s9ygw7nxr46.cloudfront.net/mac/kinza_#{version}.dmg",
      verified: "d7s9ygw7nxr46.cloudfront.net/"
  name "Kinza"
  homepage "https://www.kinza.jp/en/"

  livecheck do
    url "https://www.kinza.jp/en/download/thankyou/mac/"
    strategy :page_match
    regex(%r{href=.*?/kinza_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Kinza.app"
end
