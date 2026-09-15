cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.24.1"
  sha256 arm:   "68281e6c83bdba6059af8d91476afe3115072e26d037c848cc79a5c8f8f495fd",
         intel: "15122d2d97fc71d91a00cbd6f183fcabb28b815a050b92f036ee96825c7b5cc8"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
