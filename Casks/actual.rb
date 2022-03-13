cask "actual" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.147"

  if Hardware::CPU.intel?
    sha256 "9a725ee6b3923dc461f37a8200acfa70d63aa84e1a2dae9ee447e3a702c2ee20"
  else
    sha256 "e32ecd2331495911200ccf98a54d232a72c3668f92f0aa205ca54bf7c0d7e5e9"
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
