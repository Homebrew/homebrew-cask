# typed: false
# frozen_string_literal: true

cask "dmenu-mac" do
  version "0.6.0"
  sha256 "5bf0a6b26b94373a50361bf91408b73bfb0472953524541cf6da13629a140224"

  url "https://github.com/oNaiPs/dmenu-mac/releases/download/#{version}/dmenu-mac.zip"
  name "dmenu-mac"
  homepage "https://github.com/oNaiPs/dmenu-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "dmenu-mac.app"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
