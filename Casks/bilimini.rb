cask "bilimini" do
  version "1.5.4"
  sha256 "c09105eb8872cc9652b06fefae0cd48bebd79591ae5df702da1f5017acab3365"

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  name "bilimini"
  desc "Small window bilibili client"
  homepage "https://github.com/chitosai/bilimini"

  auto_updates true

  app "bilimini.app"
end
