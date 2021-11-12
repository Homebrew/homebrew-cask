cask "actual" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.144"

  if Hardware::CPU.intel?
    sha256 "1907c9aa767f27dccf743b33ec2ef944c08deac57338f2558d56393d988628d1"
  else
    sha256 "07e6fa6f6f729481ad13bb626810d2d02f290fdb626917e4cb04bf7cea73947f"
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
