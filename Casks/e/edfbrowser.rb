cask "edfbrowser" do
  version "2.14"
  sha256 :no_check

  depends_on arch: :arm64

  url "https://gitlab.com/sjg2203/edfbrowser-silicon/-/jobs/artifacts/v#{version}/raw/build_output/EDFbrowser-v#{version}.dmg?job=package_dmg",
      verified: "gitlab.com/sjg2203/edfbrowser-silicon/"

  name "EDFbrowser"
  desc "EDF+ and BDF+ viewer and toolbox – Apple Silicon build"
  homepage "https://gitlab.com/sjg2203/edfbrowser-silicon"

  livecheck do
    url "https://gitlab.com/sjg2203/edfbrowser-silicon.git"
    strategy :git
  end

  app "EDFbrowser.app"

  zap trash: [
    "~/.EDFbrowser",
    "~/Library/Saved Application State/net.teuniz.EDFbrowser.savedState",
  ]
end
