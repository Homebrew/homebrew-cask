cask "criptext" do
  version "0.31.0,2.0.82"
  sha256 :no_check

  url "https://cdn.criptext.com/Criptext-Email-Desktop/mac/Criptext-latest.dmg"
  name "Criptext"
  desc "Email service that's built around privacy"
  homepage "https://criptext.com/"

  app "Criptext.app"

  zap trash: [
    "~/Library/Application Support/Criptext",
    "~/Library/Logs/Criptext",
    "~/Library/Saved Application State/com.criptext.criptextmail.savedState",
  ]
end
