cask "support-app" do
  version "3.0"
  sha256 "fc90b88d20defc7a6d05c8ea9e1dee0313a585aa2be4418d1c2a75b83cafe0f1"

  url "https://github.com/root3nl/SupportApp/releases/download/v#{version}/Support.#{version}.zip"
  name "Support App"
  desc "Menu bar app for user and help desk support"
  homepage "https://github.com/root3nl/SupportApp"

  livecheck do
    url :url
    regex(/Support[._-](\d+(?:\.\d+)+)\.zip/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :sonoma"

  app "Support.app"

  uninstall launchctl: "nl.root3.support.helper",
            quit:      "nl.root3.support",
            delete:    [
              "/Library/LaunchDaemons/nl.root3.support.helper.plist",
              "/Library/PrivilegedHelperTools/nl.root3.support.helper",
            ]

  zap trash: [
    "~/Library/Application Support/Support",
    "~/Library/Caches/nl.root3.support",
    "~/Library/HTTPStorages/nl.root3.support",
    "~/Library/LaunchAgents/nl.root3.support.plist",
    "~/Library/Preferences/nl.root3.support.plist",
    "~/Library/Saved Application State/nl.root3.support.savedState",
  ]
end
