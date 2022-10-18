cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.5.1"
  sha256 arm:   "83f386ccc721378ba100435938fc53e8105ba572e1b39e5b9615b532f9ab3bb4",
         intel: "c81e7f26d2b3984058309d65aaad2451d710838fd3f9c9ebb50eb465e70b8133"

  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-#{arch}-Mac.zip",
      verified: "d3ip0rje8grhnl.cloudfront.net/"
  name "Inkdrop"
  homepage "https://www.inkdrop.info/"

  livecheck do
    url "https://api.inkdrop.app/update/links"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
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
