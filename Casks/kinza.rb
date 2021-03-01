cask "kinza" do
  version "6.8.2"
  sha256 "d91cbb5df05a95735835da907b56985ba8c9b3705138b75be1a1e47e1d9f0756"

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
