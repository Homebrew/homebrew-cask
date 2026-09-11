cask "support" do
  version "3.0.5"
  sha256 "b19fde9f2e86d84a335d6f550dae2cc9b662b4311f9ef0f31eb7ff40610460cf"

  url "https://github.com/root3nl/SupportApp/releases/download/v#{version}/Support.#{version}.zip"
  name "Support App"
  desc "Menu bar app for user and help desk support"
  homepage "https://github.com/root3nl/SupportApp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Support.app"

  uninstall launchctl: "nl.root3.support.helper",
            quit:      "nl.root3.support",
            delete:    [
              "/Library/LaunchDaemons/nl.root3.support.helper.plist",
              "/Library/PrivilegedHelperTools/nl.root3.support.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/nl.root3.support",
    "~/Library/Application Support/Support",
    "~/Library/Caches/nl.root3.support",
    "~/Library/Containers/nl.root3.support",
    "~/Library/HTTPStorages/nl.root3.support",
    "~/Library/LaunchAgents/nl.root3.support.plist",
    "~/Library/Preferences/nl.root3.support.plist",
    "~/Library/Saved Application State/nl.root3.support.savedState",
  ]
end
