cask "open-webui" do
  arch arm: "arm64", intel: "x64"

  version "0.0.20"
  sha256 arm:   "454fee910c872168b75f98bf676af4d15b21dfcc6b43a26dfadc94bd9ef10b97",
         intel: "3d98d2d398f0f5388e1d85ffa487f2b5e9fc1540771aba02fa7bcabcbdf52e5b"

  url "https://github.com/open-webui/desktop/releases/download/v#{version}/open-webui-#{arch}.dmg",
      verified: "github.com/open-webui/desktop/"
  name "Open WebUI"
  desc "Desktop application for Open WebUI"
  homepage "https://openwebui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Open WebUI.app"

  zap trash: "~/Library/Application Support/open-webui"
end
