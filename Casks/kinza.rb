cask "kinza" do
  version "6.9.0"
  sha256 "5456737ed56c4d51bb60c98edcd1f85df998d9359394d83ad542111904a3e4ab"

  url "https://d7s9ygw7nxr46.cloudfront.net/mac/kinza_#{version}.dmg",
      verified: "d7s9ygw7nxr46.cloudfront.net/"
  name "Kinza"
  desc "Web browser"
  homepage "https://www.kinza.jp/en/"

  livecheck do
    url "https://www.kinza.jp/en/download/thankyou/mac/"
    regex(%r{href=.*?/kinza_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Kinza.app"
end
