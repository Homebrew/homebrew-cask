cask "fastmail" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-#{arch}"

  version "1.7.1"
  sha256 arm:   "5e628569ee093731e94012aa255721eb4fcf2836c69920e576cd74c8e67772d6",
         intel: "a0e28017730d40edbfffef4368119b2064032139edaf6570c45450e94a11633b"

  url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/Fastmail-#{version}#{arch_suffix}-mac.zip"
  name "Fastmail"
  desc "Email client"
  homepage "https://www.fastmail.com/"

  livecheck do
    url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Fastmail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fastmail.mac.fastmail.sfl*",
    "~/Library/Application Support/Fastmail",
    "~/Library/Preferences/com.fastmail.mac.Fastmail.plist",
  ]
end
