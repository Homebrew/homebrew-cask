cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "0d307ab6eb274fd03aa0b457ad5558ce8aebc2d80f44f254c2990564b4799ac0",
         intel: "e73465cd3d4ebbbe566978c6c237ef49af4680b8eead746f8eb6a493c7fe0539"

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
