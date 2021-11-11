cask "actual" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.143"

  if Hardware::CPU.intel?
    sha256 "ab5baf1c99c0be468f2a7a4cab85108559f1d2ddf3073bb4966fb79a884d11b5"
  else
    sha256 "1cdd81c8df398eb899ff63904ffce942c3562b4fc6a28f71ccfe1c536945ea96"
  end

  url "https://github.com/actualbudget/releases/releases/download/#{version}/Actual-#{version}#{arch}.dmg",
      verified: "github.com/actualbudget/releases/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.com/"

  app "Actual.app"

  zap trash: [
    "~/Library/Application Support/Actual",
    "~/Library/Logs/Actual",
    "~/Library/Preferences/com.shiftreset.actual.plist",
    "~/Library/Saved Application State/com.shiftreset.actual.savedState",
  ]
end
