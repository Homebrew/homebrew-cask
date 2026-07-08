cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.16"
  sha256 arm:   "09a3be94f5fa2afc13e9098b8f6ad1f3285cf41f6f7a0de64a529944398d9177",
         intel: "bc36361d6a8251e4bc8a93575de27d321708873ac4f8f6f34e990ddae39e9b43"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-ce-#{version}-#{arch}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Deskreen CE.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
