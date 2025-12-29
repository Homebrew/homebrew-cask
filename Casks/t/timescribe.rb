cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "04a80b0ad270ba4a3e50f21b09a9ed1940a0488983dece8582a00a7d92c459a7",
         intel: "71a6a932719159492e2c311aa8a0d116ddd845b2479264b9998e9573ae6e59a6"

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
