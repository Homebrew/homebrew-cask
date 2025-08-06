cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "2e8c98d2d80984c871e23e6d9801b9d9b94b8a89708dbf124b898dd38637e9bd",
         intel: "bea322fd9e1ecc33313b2cf9608182fcdbb328183d3858c83e23c0bc8365b4a9"

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
