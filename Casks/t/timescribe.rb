cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "83f8bdf73e9ca56ccba8e0a52bdaafdfcac0ec995caf5838727aae2e20420ef6",
         intel: "7c3c7f277528ad168bab4a3705eca70e7bc68d1494045f867aa8ca516e63a351"

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
