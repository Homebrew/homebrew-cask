cask "tinywiibackupmanager" do
  arch arm: "arm64", intel: "x86_64"

  version "4.9.22"
  sha256 arm:   "78641a8a9703596e890a2256b876b05623d5c155893124e2490984af00504d64",
         intel: "554c972075631f1c705ad0a82c0b7d06838cc7df9d9cbddf37be5bb5b216b084"

  url "https://github.com/mq1/TinyWiiBackupManager/releases/download/v#{version}/TinyWiiBackupManager-v#{version}-macos-#{arch}.dmg"
  name "TinyWiiBackupManager"
  desc "Game backup and homebrew app manager for the Wii"
  homepage "https://github.com/mq1/TinyWiiBackupManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TinyWiiBackupManager.app"
end
