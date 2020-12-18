cask "kinza" do
  version "5.0.1"
  sha256 "2bbcd7c6312e024fe7e316e58757e5119d9897180f29c088e2958ee446926853"

  url "https://d7s9ygw7nxr46.cloudfront.net/mac/kinza_#{version}.dmg",
      verified: "d7s9ygw7nxr46.cloudfront.net/"
  appcast "https://www.kinza.jp/en/download/thankyou/mac/"
  name "Kinza"
  homepage "https://www.kinza.jp/en/"

  app "Kinza.app"
end
