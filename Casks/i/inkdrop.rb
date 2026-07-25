cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.11.9"
  sha256 arm:   "df917274dd8271d23d0148fbedc00a1d3fcb5fc13dc7b6ddd5d8eb74920b126f",
         intel: "7010e063e49c2cc01053e0c11997897a981b3e30c849e61d902f11554c2a5b9d"

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

  depends_on macos: :monterey

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
