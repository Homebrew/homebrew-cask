cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "24b8cce2e3aea9295dc067552da1bc0525f650d3df2c5d6d4fbe9d987cedb7ca",
         intel: "7ebd76efd26faf742f017bbfedd474b5fe2fd056e785c93f8dd3c05b9457c67e"

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
