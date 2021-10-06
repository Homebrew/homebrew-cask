cask "paperspace" do
  version "11.3.0.3468"
  sha256 "3550b55422f03434b1a47d1e94d5352ae78467a9491e42e97ac1d7b15721fcf6"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  name "Paperspace"
  desc "Desktop app for the Paperspace cloud computing platform"
  homepage "https://www.paperspace.com/app/"

  app "Paperspace.app"
end
