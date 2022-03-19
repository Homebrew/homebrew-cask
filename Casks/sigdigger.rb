cask "sigdigger" do
  version "0.1.0"
  sha256 "8bb40df2f187031f6d24d5890cd14bb43a7d572330849ca0d052648f34df5c13"

  url "https://github.com/BatchDrake/SigDigger/releases/download/v#{version}/SigDigger-#{version}-x86_64.dmg",
      verified: "github.com/BatchDrake/SigDigger/"
  name "SigDigger"
  homepage "https://batchdrake.github.io/SigDigger/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SigDigger.app"
end
