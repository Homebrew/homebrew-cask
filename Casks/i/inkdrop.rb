cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.11.7"
  sha256 arm:   "97eb6f11184aee6d676eb3b15d1cd371b72804011f4dbae5cc6f3ef01965ec1a",
         intel: "25f9166f6e574e4d4a010a9743ab64cf7cde3a2eebc9b7553ea4ae68df1371ad"

  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-#{arch}-Mac.zip",
      verified: "d3ip0rje8grhnl.cloudfront.net/"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.info/"

  livecheck do
    url "https://api.inkdrop.app/update/links"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
