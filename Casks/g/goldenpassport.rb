cask "goldenpassport" do
  version "0.3.0"
  sha256 "097e8533b109c983758967728ef67f883121bb2ef45a8c30c1f19818c007b256"

  url "https://github.com/thatscode/GoldenPassport/releases/download/v#{version}/GoldenPassport-#{version}.zip"
  name "GoldenPassport"
  desc "Menu bar TOTP authenticator"
  homepage "https://github.com/thatscode/GoldenPassport"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "GoldenPassport-#{version}/GoldenPassport.app"

  zap trash: [
    "~/Library/Application Support/GoldenPassport",
    "~/Library/Caches/com.thatscode.GoldenPassport",
    "~/Library/Preferences/com.thatscode.GoldenPassport.plist",
    "~/Library/Preferences/site.stanzhai.GoldenPassport.plist",
  ]
end
