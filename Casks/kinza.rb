cask "kinza" do
  version "6.8.0"
  sha256 "96942a29dc90917f3b623d40b9114e704904e37aebf18994a6bee5bdba34d992"

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
