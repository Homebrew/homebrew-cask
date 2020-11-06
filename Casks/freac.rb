cask "freac" do
  version "1.1.3"
  sha256 "5a7bb46b36e965ce5b0ecedbdee6a75982eb54ed6d594aed71716290a169b682"

  # github.com/enzo1982/freac/ was verified as official when first introduced to the cask
  url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}-macosx.dmg"
  appcast "https://github.com/enzo1982/freac/releases.atom"
  name "fre:ac"
  desc "Audio converter and CD ripper"
  homepage "https://www.freac.org/"

  app "freac.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*",
    "~/Library/Preferences/org.freac.freac.plist",
    "~/Library/Saved Application State/org.freac.freac.savedState",
  ]
end
