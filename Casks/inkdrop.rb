cask "inkdrop" do
  version "5.1.2"
  sha256 "3325d1ecc909084beec7b3f687032a6bed53e13b42f9f061940f5b6c4298d5b6"

  # d3ip0rje8grhnl.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast "https://api.inkdrop.app/update/links"
  name "Inkdrop"
  homepage "https://www.inkdrop.info/"

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
  ]
end
