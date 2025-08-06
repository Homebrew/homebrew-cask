cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "ccbdd4a32503b1afc138130455637a298b0ac9e78783be13c252ae25e4e7f790",
         intel: "bd89f0eebdf00ea830144beeafbe4b0b63b78f5e34fb4988f627d43834713950"

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
  depends_on macos: ">= :catalina"

  app "TimeScribe.app"

  zap trash: "~/Library/Application Support/timescribe"
end
