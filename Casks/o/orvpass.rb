cask "orvpass" do
  version "4.0.7"
  sha256 "a77d0ccc108609748b13ec0003b68cdedc6cd14d3b1827c44debceea9ca25a4c"

  url "https://github.com/krtvysinghh/Orvpass/releases/download/v#{version}/app_0.1.0_aarch64.dmg"
  name "Orvpass"
  desc "Lightning-fast, highly secure, natively designed password manager"
  homepage "https://github.com/krtvysinghh/Orvpass"

  app "app.app", target: "Orvpass.app"

  zap trash: [
    "~/Library/Application Support/Orvpass",
    "~/Library/Caches/Orvpass",
    "~/Library/Preferences/com.krtvysingh.app.plist",
    "~/Library/Saved Application State/com.krtvysingh.app.savedState",
  ]
end
