cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "d84a19775cad71ee54c9b3bef6c4bfedc7027b2c4d61839bbad0a4d75e1048b0",
         intel: "2fa88cb5470530f8075555f62da6ec46a5d879f98c2b0c2668a48e3b6c1fbcd0"

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
