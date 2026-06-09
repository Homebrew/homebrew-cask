cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.27"
  sha256 arm:   "d14879a4ab5fec522e27fa6fbbbe07f0d6140bdd2b82edd2de9dc956f216aa6f",
         intel: "8d2f0cb9eed4a4acd4331cdf84b259c8387cf55d1fd3f2ed46b215fd8defbfe0"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "T3 Code (Alpha).app"

  zap trash: [
    "~/.t3/userdata",
    "~/Library/Application Support/T3 Code (Alpha)",
    "~/Library/Caches/com.t3tools.t3code",
    "~/Library/HTTPStorages/com.t3tools.t3code",
    "~/Library/Preferences/com.t3tools.t3code.plist",
    "~/Library/Saved Application State/com.t3tools.t3code.savedState",
  ]
end
