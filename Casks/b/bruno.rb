cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.16.1"
  sha256 arm:   "9261c7fc507c79e59f0402d1a287db6a5177c6ee1019fda670114722717424f6",
         intel: "68843e3bdc1cb8155c7e7cbc04e4c327a5526fbe16b1cef6230d7134e648aff3"

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
