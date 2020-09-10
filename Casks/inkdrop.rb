cask "inkdrop" do
  version "5.0.1"
  sha256 "536a9fa26f47b428d6840fdc453a1c37f19524559df4a8ae4b7dec5b7cdc2cca"

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
