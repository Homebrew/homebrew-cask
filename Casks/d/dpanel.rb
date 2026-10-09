cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "2a6bc9541ddc0c8969be170566c2efde28b078594028a1e328e3dfc208bf4044",
         intel: "18a840b0a266798f3345c780fcc5077f8557cb0d11dcf26e7c24f6c0ea1d768c"

  url "https://github.com/donknap/dpanel/releases/download/v#{version}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"
end
