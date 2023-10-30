cask "focusrite-control" do
  version "3.16.0"
  sha256 "7d3b479eac54c66a945109a323b98c12327dee87040bc1c4cd3df592f8d89d63"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/downloads/focusrite_control_#{version}.dmg"
  name "Focusrite Control"
  desc "Focusrite interface controller"
  homepage "https://focusrite.com/en"

  livecheck do
    url "https://downloads.focusrite.com/focusrite/scarlett-3rd-gen/scarlett-solo-3rd-gen"
    regex(%r{href=.*?/focusrite[._-]control[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "Focusrite Control.pkg"

  uninstall pkgutil:   "com.focusrite.FocusriteControl",
            launchctl: "com.focusrite.ControlServer"

  zap trash:  [
        "~/Library/Application Support/Focusrite",
        "~/Library/Caches/com.juce.locks",
        "~/Library/Logs/Focusrite Control",
        "~/Library/Saved Application State/com.focusrite.FocusriteControl.savedState",
      ],
      delete: [
        "/Library/Application Support/Focusrite",
        "/Library/LaunchDaemons/com.focusrite.ControlServer.plist",
        "/Library/Logs/Focusrite Control",
      ]
end
