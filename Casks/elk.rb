cask "elk" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "623889c29fc7c708d121db73eb8475389daa115e262dbb38c5f58902bd424097",
         intel: "7088f83531ce3de7a3173499b05e9368661fa5f8d405fc888cea278b557e2b04"

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
