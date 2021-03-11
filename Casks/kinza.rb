cask "kinza" do
  version "6.8.3"
  sha256 "e4c3a7f105f5c95e7ce3c5e4ea9277b9b17e3ff48ba4ccb91e5388a3fcbb7cfe"

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
