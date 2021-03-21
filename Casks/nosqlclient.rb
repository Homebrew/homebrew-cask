cask "nosqlclient" do
  version "2.2.0"
  sha256 "49135ec4c19be93d77c079f9f4bce82db0538b524650ef812e8fd0b24451de64"

  url "https://github.com/nosqlclient/nosqlclient/releases/download/#{version}/osx-portable.zip",
      verified: "github.com/nosqlclient/nosqlclient/"
  name "Nosqlclient"
  homepage "https://www.nosqlclient.com/"

  app "Nosqlclient-darwin-x64/Nosqlclient.app"

  zap trash: [
    "~/Library/Application Support/Mongoclient",
    "~/Library/Preferences/com.electron.nosqlclient.helper.plist",
    "~/Library/Preferences/com.electron.nosqlclient.plist",
    "~/Library/Preferences/Mongoclient",
  ]
end
