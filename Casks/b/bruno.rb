cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "f1f922746316056aeb95d23a051c28fed8f66b5ff45a9765d4a5071785161ea8",
         intel: "5c55abab0ab44c940938c1c814ce2672c83b230744f1e2e632a932f51eaf65a4"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
