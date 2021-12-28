cask "actual" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.145"

  if Hardware::CPU.intel?
    sha256 "bb91dfd7a2ed78f7928a0742472ca2c65428926751518ec8ade93596081ed96a"
  else
    sha256 "b4f1f99d06c1d022ae6c349e10aafa94e6f5fcdbaa5ca7834f71db4751af6dd1"
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
