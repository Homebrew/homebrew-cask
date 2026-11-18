cask "microsoft-copilot" do
  version "157.0.4341.55,c1457dea-68df-4466-8766-add66540cab6"
  sha256 "d917cd8f3dc9cbd644744ae69d856c2e89f89333247b042b690477c2e5492349"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/Copilot-#{version.csv.first}.pkg"
  name "Microsoft Copilot"
  name "Microsoft 365 Copilot"
  desc "AI assistant"
  homepage "https://www.microsoft.com/en-us/copilot/download-copilot-app"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2325114"
    regex(%r{/([^/]+)/Copilot[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "Copilot-#{version.csv.first}.pkg"

  uninstall launchctl: [
              "com.microsoft.copilot.undockedhost",
              "com.microsoft.EdgeUpdater.wake.system",
            ],
            pkgutil:   "com.microsoft.m365copilot"

  zap trash: [
    "/Library/Application Support/Microsoft/Copilot",
    "/Library/Logs/Microsoft/copilotinstall.log",
    "~/Library/Application Scripts/com.microsoft.m365copilot",
    "~/Library/Containers/com.microsoft.m365copilot",
    "~/Library/Group Containers/UBF8T346G9.com.microsoft.copilot.shared",
    "~/Library/Preferences/com.microsoft.copilot.dockmigration.plist",
    "~/Library/Preferences/com.microsoft.copilot.installmarker.plist",
    "~/Library/Preferences/com.microsoft.m365copilot.plist",
    "~/Library/WebKit/com.microsoft.m365copilot",
  ]
end
