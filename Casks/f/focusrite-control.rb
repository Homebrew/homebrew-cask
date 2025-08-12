cask "focusrite-control" do
  version "3.25.0"
  sha256 "f890b6ed8ec32611104b8ea65e5b1ce360175aa7f9083fd7d085034674b95984"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/downloads/focusrite_control_#{version}.dmg"
  name "Focusrite Control"
  desc "Focusrite interface controller"
  homepage "https://focusrite.com/en"

  livecheck do
    url "https://downloads.focusrite.com/focusrite/scarlett-3rd-gen/scarlett-solo-3rd-gen"
    regex(%r{href=.*?/focusrite[._-]control[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "Focusrite Control.pkg"

  uninstall launchctl: "com.focusrite.ControlServer",
            pkgutil:   "com.focusrite.FocusriteControl"

  zap delete: [
        "/Library/Application Support/Focusrite",
        "/Library/LaunchDaemons/com.focusrite.ControlServer.plist",
        "/Library/Logs/Focusrite Control",
      ],
      trash:  [
        "~/Library/Application Support/Focusrite",
        "~/Library/Caches/com.juce.locks",
        "~/Library/Logs/Focusrite Control",
        "~/Library/Saved Application State/com.focusrite.FocusriteControl.savedState",
      ]
end
