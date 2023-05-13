cask "swimat" do
  version "1.7.0"
  sha256 "adcf450d98c247fe4c45c68353f19afca3e2039c8431ec080f14000fe9cc36bf"

  url "https://github.com/Jintin/Swimat/releases/download/#{version}/Swimat.zip"
  name "Swimat"
  desc "Xcode formatter plug-in for Swift code"
  homepage "https://github.com/Jintin/Swimat"

  app "Swimat.app"

  zap trash: [
    "/usr/local/bin/swimat",
    "~/Library/Containers/com.jintin.Swimat.Extension",
    "~/Library/Group Containers/com.jintin.swimat.configuration",
  ]
end
