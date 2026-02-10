cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "f16c01d1586a5cf7e170e0af4386e13c903d20da7b412b909e3ef3bacdd72504",
         intel: "43723cef99730cb27cba1c9acb0481bab8911df96defc79694b11c901f8b6449"

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
