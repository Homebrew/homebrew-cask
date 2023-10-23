cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.6.0"
  sha256 arm:   "bbc789ed4c2effa425d8feeef04f3016d47ac505df35f54815c76b91b40a9f09",
         intel: "9611778fa7318efbfe3528eb8f060b4beced89039e6096ef67e6bf0f2a296a5c"

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
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
  ]
end
