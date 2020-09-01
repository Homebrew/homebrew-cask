cask "inkdrop" do
  version "5.0.0"
  sha256 "7f5925376f7412c89c5e501bc73a7cb719f393cfaed17e90bdf7195396c31e36"

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
