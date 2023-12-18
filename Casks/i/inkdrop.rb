cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.6.2"
  sha256 arm:   "7c28a65e720f02efd8fdd1562ec4c4cb7a06f76a67fea5bdfcd40d4b0b7513ce",
         intel: "7419a8b3606b2439aa75cf144e8d333c2cb74b57d2ca6d1dd71fea933753bcaa"

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

  depends_on macos: ">= :high_sierra"

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
  ]
end
