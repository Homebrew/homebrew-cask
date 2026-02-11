cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.17.4"
  sha256 arm:   "0303f9815caa3b7a63217a26e55423c52656bb822c1b93bdcee96a982db8964d",
         intel: "8d6c8be0f658f930edef36d8cddf8960dfc70dca6af98bf5fd2ea87c62451558"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
