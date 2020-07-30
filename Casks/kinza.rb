cask "kinza" do
  version "5.0.1"
  sha256 "2bbcd7c6312e024fe7e316e58757e5119d9897180f29c088e2958ee446926853"

  # d7s9ygw7nxr46.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d7s9ygw7nxr46.cloudfront.net/mac/kinza_#{version}.dmg"
  appcast "https://www.kinza.jp/en/download/thankyou/mac/"
  name "Kinza"
  homepage "https://www.kinza.jp/en/"

  app "Kinza.app"
end
