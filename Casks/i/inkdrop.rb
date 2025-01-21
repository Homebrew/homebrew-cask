cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.9.3"
  sha256 arm:   "3f4e3618514f4376739fc916d69c44001583b6bee4de90496a4d0f853a839b67",
         intel: "4a1d8dfa6bbec45205aa92bdd067e01cb9b8d00aa42b7c0ac5d7334d8ecddf84"

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

  depends_on macos: ">= :catalina"

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
