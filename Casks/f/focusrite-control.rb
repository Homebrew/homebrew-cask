cask "focusrite-control" do
  version "3.26.0"
  sha256 "8dbe0f82b9335f74b8276dfaaa1e76c02e7ae837457d4509d8ff4571f4658f4a"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/downloads/focusrite_control_#{version.dots_to_underscores}.dmg"
  name "Focusrite Control"
  desc "Focusrite interface controller"
  homepage "https://focusrite.com/en"

  livecheck do
    url "https://downloads.focusrite.com/focusrite/scarlett-3rd-gen/scarlett-solo-3rd-gen"
    regex(/href=.*?focusrite[._-]control[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
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
