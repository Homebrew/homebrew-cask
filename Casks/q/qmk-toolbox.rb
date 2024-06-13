cask "qmk-toolbox" do
  version "0.3.3"
  sha256 "58faded9cb06010cdabed92c2db8f72ff32b5944fa776813255abb7809a970b9"

  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip",
      verified: "github.com/qmk/qmk_toolbox/"
  name "QMK Toolbox"
  desc "Toolbox companion for QMK Firmware"
  homepage "https://qmk.fm/"

  app "QMK Toolbox.app"

  uninstall quit: "fm.qmk.toolbox"

  zap trash: [
    "~/Library/Caches/fm.qmk.toolbox",
    "~/Library/Saved Application State/fm.qmk.toolbox.savedState",
  ]
end
