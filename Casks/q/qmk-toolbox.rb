cask "qmk-toolbox" do
  version "0.3.4"
  sha256 "0a051496d914d588a756ee4be2ee8aa03dc9d5d328733012e6f06fea4f425d08"

  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip",
      verified: "github.com/qmk/qmk_toolbox/"
  name "QMK Toolbox"
  desc "Toolbox companion for QMK Firmware"
  homepage "https://qmk.fm/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "QMK Toolbox.app"

  uninstall quit: "fm.qmk.toolbox"

  zap trash: [
    "~/Library/Caches/fm.qmk.toolbox",
    "~/Library/Saved Application State/fm.qmk.toolbox.savedState",
  ]
end
