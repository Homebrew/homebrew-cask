cask "github-store" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "aa43314452a205670807444501da2228d44bbb31d4fa604aad48d84f848580f8",
         intel: "b8e7b7ceff47abd39fa4d55f24923b7beaad12a9f5399e16e87cc1688dfde7be"

  url "https://github.com/rainxchzed/Github-Store/releases/download/#{version}/GitHub.Store-#{version}_#{arch}.dmg"
  name "GitHub Store"
  desc "App store for GitHub releases"
  homepage "https://github.com/rainxchzed/Github-Store"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "GitHub-Store.app"

  # No zap stanza required
end
