cask "quotabar" do
  version "1.1.3"
  sha256 "34f3c6b497295ceaf3604e6a96c4367fff4d49df9f2ecbf9c632867e8d4f04c4"

  url "https://github.com/chilohwei/QuotaBar/releases/download/v#{version}/QuotaBar-#{version}-universal.dmg",
      verified: "github.com/chilohwei/QuotaBar/"
  name "QuotaBar"
  desc "Menu bar tool for viewing Codex quota and switching local accounts"
  homepage "https://github.com/chilohwei/QuotaBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Application Support/QuotaBar",
    "~/Library/Preferences/com.chiloh.QuotaBar.plist",
  ]
end
