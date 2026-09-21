cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "6a5b16f9f3976bdbc0bcd7cdb7e18e20fa4316d269b8f452360814f5e1a97102",
         intel: "ebefa686bc9babe62fe2e1eb8de7c4c773c4707bae97d50204aacd9e1e940b2f"

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
