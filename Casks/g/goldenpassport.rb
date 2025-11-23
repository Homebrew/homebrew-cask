cask "goldenpassport" do
  version "0.1.7"
  sha256 "696a2cd0c6245502727b2cab0f0a2d92c636fca6e4c3c1fbfa289e152cadc46c"

  url "https://github.com/stanzhai/GoldenPassport/releases/download/v#{version}/GoldenPassport.zip"
  name "GoldenPassport"
  desc "Native implementation of Google Authenticator based on Swift3"
  homepage "https://github.com/stanzhai/GoldenPassport"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "GoldenPassport.app"

  zap trash: [
    "~/Library/Application Support/GoldenPassport",
    "~/Library/Preferences/site.stanzhai.GoldenPassport.plist",
  ]
end
