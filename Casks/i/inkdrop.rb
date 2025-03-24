cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.11.0"
  sha256 arm:   "346851f81859a158face78abbe60e9639f33c076276ecd0d6eab4fda86150877",
         intel: "44dd5038eddde921b6d210397904a1d2f0b9386cda37d38da414256a7c381241"

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
