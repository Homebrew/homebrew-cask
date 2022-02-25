cask "actual" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.146"

  if Hardware::CPU.intel?
    sha256 "fcde935a1f3b6f9f3494b261cdae43c998866f59cbf6daaed3d13d70dd81683a"
  else
    sha256 "a44bc9948a6b16fcd95dbe2acbe4404b6e20927e2a22e9612312bb72071b2dc2"
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
