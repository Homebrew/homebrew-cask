cask "inkdrop" do
  version "5.1.1"
  sha256 "68c1022ae0bad4cd8031280f6066af6b16ea22c4b46cd576b1138f192172f455"

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
