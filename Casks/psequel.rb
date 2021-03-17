cask "psequel" do
  version "1.5.3"
  sha256 :no_check

  url "http://www.psequel.com/download?version=latest"
  appcast "http://www.psequel.com/"
  name "PSequel"
  homepage "http://www.psequel.com/"

  depends_on macos: ">= :yosemite"

  app "PSequel.app"

  zap trash: [
    "~/Library/Application Support/com.psequel.PSequel",
    "~/Library/Preferences/com.psequel.PSequel",
  ]
end
