cask "museeks" do
  version "0.20.1"
  sha256 "53ec6a7f2b30aca6e4b1e0d1efac5bbb2e3b9d5132b4d295d38a6db5bee20c29"

  url "https://github.com/martpie/museeks/releases/download/#{version}/Museeks_#{version}_universal.dmg",
      verified: "github.com/martpie/museeks/"
  name "Museeks"
  desc "Music player"
  homepage "https://museeks.io/"

  depends_on macos: ">= :high_sierra"

  app "Museeks.app"

  zap trash: [
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
