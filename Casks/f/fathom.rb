cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "1.42.2"
  sha256 arm:   "2090202e357f8326205d3479e4a73176da65badc36490ca0d5e4b8912bb2a475",
         intel: "26f3d9082764dfc1e4802e764af3a2cbb5d7cd513ce97e67662f2743c2b01696"

  url "https://electron-update.fathom.video/download/file/Fathom-darwin-#{arch}-#{version}.dmg"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/update/darwin#{livecheck_arch}/0.0.0"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  app "Fathom.app"

  uninstall quit: [
    "Fathom Helper",
    "Fathom",
  ]

  zap trash: [
    "~/Library/Application Support/Fathom",
    "~/Library/Logs/Fathom",
  ]
end
