cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "e77f525807ed280438516ad9eaecc4ebd0f7365f7f20a2c57f460316d422a648",
         intel: "43009fd21663923241dc5524643973c3e239f213860a14dfd191d170ada0b6b7"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
