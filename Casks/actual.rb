cask "actual" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.148"

  if Hardware::CPU.intel?
    sha256 "95159e54c011aba02f64b0d126a497b99544e1086429a11e67587e3ffc0533d4"
  else
    sha256 "df9e2139a3a5b1355f1ed1a28863115ac574eb15ec856d6e95de13b02bc26ae0"
  end

  url "https://github.com/actualbudget/releases/releases/download/#{version}/Actual-#{version}#{arch}.dmg",
      verified: "github.com/actualbudget/releases/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.com/"

  app "Actual.app"

  zap trash: [
    "~/Documents/Actual",
    "~/Library/Application Support/Actual",
    "~/Library/Logs/Actual",
    "~/Library/Preferences/com.shiftreset.actual.plist",
    "~/Library/Saved Application State/com.shiftreset.actual.savedState",
  ]
end
