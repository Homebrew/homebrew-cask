cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.14.1"
  sha256 arm:   "a88fa473279e05d9f163abb0cdfc74f3e0e11e0256918b1bf8041068f5657067",
         intel: "a55ad1b40e6e7d61d0c42e991b5f59724872b1caa80fc525c60471354fcd445a"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
