cask "focusrite-control" do
  version "3.17.0"
  sha256 "d3421b8cd90a54c69072b5c0e391adaaac58a4ad9c09290a5d5caea46838ecf6"

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
