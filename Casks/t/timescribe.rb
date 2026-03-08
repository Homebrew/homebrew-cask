cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "ef36e37704d75be0a918cdbebc8af45a4a15ddf626d464fa5d2976e16a967aef",
         intel: "eade80d013eae3ce4e5e27e6d6f859d9e1ec3bebc72ba5c3d2bd4d5b18dd1398"

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
