cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "8ba626d208abf9b104bd6f64c8ece3ffba5ae2d8b59844834834a423b8f745ce",
         intel: "6d3a2c41947f708e23f815eb636799d6adb1cba9da0c7ec2b0f594eda69d2da4"

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
  depends_on macos: :monterey

  app "TimeScribe.app"

  zap trash: "~/Library/Application Support/timescribe"
end
