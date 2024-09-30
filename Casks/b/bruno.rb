cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.31.0"
  sha256 arm:   "67d364530737e9bdd36c4b9603d5622598881acead1a7f5f583eb39674b747b3",
         intel: "c0d13098098dc684e2250144d1577551cbf135b79633671316f6913beed1e2cd"

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
