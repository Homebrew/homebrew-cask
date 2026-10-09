cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "61de41dda18152cdeac7e77413b2f545c725bd667953b88c57f4c312ff97ce0c",
         intel: "3f42deb277bdbf1b909f7a66529c0a8c1ce6df26b53f432eea29d36fa0bea553"

  url "https://github.com/donknap/dpanel/releases/download/v#{version}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
