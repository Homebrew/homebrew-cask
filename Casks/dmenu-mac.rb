# typed: false
# frozen_string_literal: true

cask "dmenu-mac" do
  version "0.7.0"
  sha256 "6159e73d2522008b4882bc3fcdba4e22bb4570e81f3ecf3ee60377decde794b9"

  url "https://github.com/oNaiPs/dmenu-mac/releases/download/#{version}/dmenu-mac.zip"
  name "dmenu-mac"
  desc "Keyboard-only application launcher"
  homepage "https://github.com/oNaiPs/dmenu-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "dmenu-mac.app"
  binary "#{appdir}/dmenu-mac.app/Contents/MacOS/dmenu-mac"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
