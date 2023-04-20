cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "cdfeba9f0beb2869a04cfcdf7705cf2aad871b1a3c303178ea98dfab37371ae8",
         intel: "f4035dfeacf5d0062758fcf01ed0ef692ef922a36999f4df1d7e59f3c96b9e32"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
