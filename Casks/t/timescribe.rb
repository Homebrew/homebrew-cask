cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "8c7f7e9e754244e6d68760302fc294c4873fc331333535b443f5302d588ff34d",
         intel: "bceacbf8374af73af4fbf1e176f086b7a454fbb27b9e5672fc7d97f5637b30f2"

  url "https://github.com/WINBIGFOX/TimeScribe/releases/download/v#{version}/TimeScribe-#{version}-#{arch}.zip",
      verified: "github.com/WINBIGFOX/TimeScribe/"
  name "TimeScribe"
  desc "Working time tracker"
  homepage "https://timescribe.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "TimeScribe.app"

  zap trash: "~/Library/Application Support/timescribe"
end
