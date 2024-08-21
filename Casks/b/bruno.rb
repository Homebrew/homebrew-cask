cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.26.0"
  sha256 arm:   "8ebc017d609f5b2c5be4f9eace2128474018094d245fa57f9960e1469cbe461e",
         intel: "b1a5c9020dce7ae811fdf5aa907df711a4e4b51a8fe9390d2c5b997a7e662765"

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
