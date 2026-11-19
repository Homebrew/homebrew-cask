cask "kameleo" do
  version "5.5.0"
  sha256 "882a77c14e2654c639e5124fcb3cf4d40e2a264b530ddaa340ff36b25a6131cd"

  url "https://github.com/kameleo-io/kameleo/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Kameleo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.kameleo.client.sfl*",
    "~/Library/Application Support/Kameleo",
    "~/Library/Preferences/io.kameleo.client.plist",
  ]
end
