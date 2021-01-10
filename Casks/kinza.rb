cask "kinza" do
  version "6.7.2"
  sha256 "2e10435fc51f5e14d3e016edd7c8fe77598197f378c2d57a397e96e2273ef859"

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
