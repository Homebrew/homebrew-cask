cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "02807adbbe8e5bd9084b76f06b41491b818f12320a1d399988e2e9bc9eb7e953",
         intel: "72ee3e9cd7acc72c9746d696b3419d3e0f8874793c1f0535b3f4e560305b8c9d"

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
