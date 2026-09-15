cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "0d978740e3b437fec75959607c4cc1268802f4b598bd538f8d9d5cba8b9fb0df",
         intel: "a3667911b6ed5702736f36f9fa540ed956eadb673fc96bcd35b8d806d8c9798b"

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
