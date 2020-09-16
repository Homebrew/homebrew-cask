cask "acquia-dev" do
  version "2.2020.08.10"
  sha256 "6fe612c9f12d0ebe3b8383fd3b86cf27df3728ebb4790bb2f2f6c3c40b044cf0"

  url "https://dev.acquia.com/sites/default/files/file/#{version.minor_patch.dots_to_hyphens}/AcquiaDevDesktop-#{version.dots_to_hyphens}.dmg"
  appcast "https://dev.acquia.com/downloads",
          must_contain: version.dots_to_hyphens
  name "Acquia Dev Desktop"
  homepage "https://www.acquia.com/drupal/acquia-dev-desktop"

  installer script: {
    executable: "Acquia Dev Desktop Installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--unattendedmodeui", "none"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/DevDesktop/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--unattendedmodeui", "none"],
    sudo:       true,
  }
end
