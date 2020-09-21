cask "inkdrop" do
  version "5.1.0"
  sha256 "f0977199fd20d897078ef0ee8b84f43699f9ec5f35a8a0482b42679fd9127967"

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
