cask "acquia-dev" do
  version "2.2021.01.14"
  sha256 "91c4d524ed5e218897a7284480e616f833e59e91cadafa966563e8034fdee19a"

  url "https://dev.acquia.com/sites/default/files/file/#{version.minor_patch.dots_to_hyphens}/AcquiaDevDesktop-#{version.dots_to_hyphens}-osx-installer_0.zip"
  name "Acquia Dev Desktop"
  desc "Install, test, and build Drupal sites locally"
  homepage "https://www.acquia.com/drupal/acquia-dev-desktop"

  livecheck do
    url "https://dev.acquia.com/downloads"
    strategy :page_match do |page|
      v = page[%r{href=.*?/AcquiaDevDesktop-(\d+(?:-\d+)*)-osx-installer_0\.zip}, 1]
      v.tr("-", ".")
    end
  end

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
