cask "iloader" do
  version "2.0.10"
  sha256 "4244be5fe68e9edd551cea02fab84ee958a3ecdbaeb17ccae1cc63e0b5d9a57d"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "iloader.app"

  zap trash: "~/Library/Application Support/me.nabdev.iloader"
end
