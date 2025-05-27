cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "8cf5655a0c89acf374387d68669f392b35e68ccf7a5e5675d2a0a7f512acaf1c",
         intel: "2e24428b0dec5d5f8c8f7fb4d1f54dbc310057fab90a502f5dd4bf0b9bb73317"

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
