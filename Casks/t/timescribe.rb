cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.17.1"
  sha256 arm:   "c59a369771cd42155a61a24762b92062b8226ed26ddb07a82842fc2036b750df",
         intel: "8b7e652f5b6d1f076187fa0e926d6cfaa215cfab8427ea22557d564b80e54086"

  url "https://github.com/WINBIGFOX/TimeScribe/releases/download/v#{version}/TimeScribe-#{version}-#{arch}.zip"
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
