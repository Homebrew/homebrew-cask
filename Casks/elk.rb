cask "elk" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "55aeefa3706495344b98757c470a88f067f71d3ba3da5791f02e495a87936634",
         intel: "6ead714773b0bf0575b9822d31c18692a43ac9dd5b074c996e617b1e0a1da7fe"

  url "https://github.com/elk-zone/elk-native/releases/download/elk-native-v#{version}/Elk_#{version}_macos_#{arch}.dmg"
  name "Elk Native"
  desc "Mastodon web client"
  homepage "https://github.com/elk-zone/elk-native"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/elk[._-]native[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  app "Elk.app"

  zap trash: [
    "~/Library/Application Support/zone.elk.native",
    "~/Library/Caches/zone.elk.native",
    "~/Library/HTTPStorages/zone.elk.native.binarycookies",
    "~/Library/Logs/zone.elk.native",
    "~/Library/WebKit/zone.elk.native",
  ]
end
