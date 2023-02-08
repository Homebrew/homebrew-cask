cask "fishing-funds" do
  arch arm: "-arm64"

  version "7.1.0"
  sha256 arm:   "42e12c718c542366738dddcdfbaf8d3f505f64dc34c767f9835d73855d72f081",
         intel: "b46e4601956259a7cb82643c4b7d0f68d0007bd76d7ab412a54abed9b6942fcb"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
