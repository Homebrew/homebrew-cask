cask "knotes" do
  version "2.7.0"
  sha256 "0e83b5f86d3e41e54c8e968d596d5109b4870ec5b1af52fa4233641429ccef8b"

  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg",
      verified: "knotes2.s3-ap-northeast-1.amazonaws.com/"
  appcast "https://knotesapp.com/"
  name "Knotes"
  homepage "https://knotesapp.com/"

  app "Knotes.app"

  zap trash: [
    "~/Library/Application Support/knotes",
    "~/Library/Logs/knotes",
    "~/Library/Preferences/com.knotesapp.knotes.helper.plist",
    "~/Library/Preferences/com.knotesapp.knotes.plist",
    "~/Library/Saved Application State/com.knotesapp.knotes.savedState",
  ]
end
