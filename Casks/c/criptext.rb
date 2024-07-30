cask "criptext" do
  version "0.31.0,2.0.82"
  sha256 :no_check

  url "http://cdn.criptext.com/Criptext-Email-Desktop/mac/Criptext-latest.dmg"
  name "Criptext"
  desc "Email service that's built around privacy"
  homepage "https://criptext.com/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "Criptext.app"

  zap trash: [
    "~/Library/Application Support/Criptext",
    "~/Library/Logs/Criptext",
    "~/Library/Saved Application State/com.criptext.criptextmail.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
