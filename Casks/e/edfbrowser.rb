cask "edfbrowser" do
  version "2.14"
  sha256 "1b5651c6f09dd3186e9c3007466ac9d66b4066eff137ea76cb6b7e37fba072f8"

  url "https://gitlab.com/sjg2203/edfbrowser-silicon/-/releases/v#{version}/downloads/EDFbrowser-v#{version}.dmg"
  name "EDFbrowser"
  desc "EDF+ and BDF+ viewer and toolbox – Apple Silicon build"
  homepage "https://gitlab.com/sjg2203/edfbrowser-silicon"

  livecheck do
    url :homepage
    strategy :git
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "EDFbrowser.app"

  zap trash: [
    "~/.EDFbrowser",
    "~/Library/Saved Application State/net.teuniz.EDFbrowser.savedState",
  ]
end
