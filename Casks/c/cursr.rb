cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3"
  sha256 arm:   "80511e2ad9e44aa87dde135b9d52ee1be554bdd1568dea2b512f33c308790957",
         intel: "bbcc722376c35a6a863a2e90749eeda37687f3aad664986d924ad09efffdd2de"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
