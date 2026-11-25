cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "6105613851e95473bcf16f4752f4e824d948c33878a03fe57fb0f862adcee38a",
         intel: "4f93a616d56b52b101aa5303b8414cbc57d1fade647a6df5cd4483dfc207210c"

  url "https://github.com/kamgurgul/cpu-info/releases/download/jvm-#{version}/CPU-Info-macos-#{arch}-#{version}.dmg"
  name "CPU Info"
  desc "Provides information about device hardware and software"
  homepage "https://github.com/kamgurgul/cpu-info"

  livecheck do
    url :url
    regex(/^jvm[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "CPU-Info.app"

  zap trash: "~/Library/Preferences/CPU-Info"
end
