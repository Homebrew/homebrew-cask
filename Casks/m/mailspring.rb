cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.24.0"
  sha256 arm:   "ad83f99355e01f248493d61070f7ca19991e7c671045e55640f5f15c698d298e",
         intel: "d783b239f200f35d9f9a3bcf30186f99c73cbd10b65ab5fdfffb951f06f557f4"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
