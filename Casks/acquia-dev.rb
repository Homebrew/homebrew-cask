cask "acquia-dev" do
  version "2.2020.09.23"
  sha256 "3fda351ecda5d19ecaccdd3f3b8fa4930afe84943a14f9cdbd2aed62c25c5495"

  url "https://dev.acquia.com/sites/default/files/file/#{version.minor_patch.dots_to_hyphens}/AcquiaDevDesktop-#{version.dots_to_hyphens}.dmg"
  appcast "https://dev.acquia.com/downloads",
          must_contain: version.dots_to_hyphens
  name "Acquia Dev Desktop"
  desc "Install, test, and build Drupal sites locally"
  homepage "https://www.acquia.com/drupal/acquia-dev-desktop"

  installer manual: "Acquia Dev Desktop Installer.app"

  uninstall script: {
    executable: "/Applications/DevDesktop/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--unattendedmodeui", "none"],
    sudo:       true,
  }

  zap trash: [
    "~/.acquia",
    "~/Library/Caches/com.acquia.acquia-dev-desktop#{version.major}",
    "~/Library/Saved Application State/com.acquia.acquia-dev-desktop#{version.major}.savedState",
  ]
end
