cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "45809e55d67ea2c27fa93bc4bfc038e81c8531800ec844ee5ff5a81a4d563c5b",
         intel: "688c2e798dada1d683a6bc02d1ae19fe123c7e8a7b1b22cab70c3eaa4b6cae95"

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
