cask "goldenpassport" do
  version "0.1.6"
  sha256 "1f6192700950275b0ebd9ab55d482516c1874efcdce85d97ce4dba1b374d06f4"

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
