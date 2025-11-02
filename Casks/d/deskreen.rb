cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "84d99f524cd98fa751231cd0295ea7e55b27c826ff049ff317d2203fa1abfe1d",
         intel: "b7b8c804e90bcda8a508b23640ec2ae5e5e055675933777258530bca50b07c21"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-ce-#{version}-#{arch}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Deskreen CE.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
