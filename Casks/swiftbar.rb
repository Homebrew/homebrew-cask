# typed: false
# frozen_string_literal: true

cask "swiftbar" do
  version "v1.2.3"
  sha256 "d5201dc547111d3db934584e41e625d8a6ad2d4076d8db424fbf3c4aeec4ef79"

  url "https://github.com/swiftbar/SwiftBar/releases/download/#{version}/SwiftBar.zip",
      verified: "github.com/swiftbar/SwiftBar/releases/"
  name "SwiftBar"
  desc "Powerful menu bar customization tool"
  homepage "https://swiftbar.app/"

  app "SwiftBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.SwiftBar",
    "~/Library/Containers/com.ameba.SwiftBar-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.SwiftBar.plist",
  ]
end
