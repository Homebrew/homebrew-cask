cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "0b950e631e0edda430cba162e7cddb021098565081663f7a6d0c59201563d86f",
         intel: "638c870786467faf78d7363940598e290e373f804b2ce262ef98609488e43be6"

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
