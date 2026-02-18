cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "c729e9904d44af26eade5db25e2f8076249cacb7bc214d8b2fb160447d9ebb5b",
         intel: "b63b813e831aee6ba1c6b5660b1336e2c98c861fdd2253ae461fabcaf7a54582"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
