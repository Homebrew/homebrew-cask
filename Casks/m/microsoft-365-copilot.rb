cask "microsoft-365-copilot" do
  version "157.0.4341.41,8a59ff1b-b81b-4296-8643-72ac93190eaf"
  sha256 "d2eef0283791badd3f67684d1b70e4c4a18e6a9fc63570cc9e11d773ef2ed6a6"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/Copilot-#{version.csv.first}.pkg"
  name "Copilot"
  desc "AI-first productivity assistant for Microsoft"
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
  depends_on arch: :arm64
  depends_on macos: :sonoma

  pkg "Copilot-#{version.csv.first}.pkg"

  uninstall launchctl: "com.microsoft.EdgeUpdater.wake.system",
            pkgutil:   "com.microsoft.m365copilot"

  zap trash: [
    "~/Library/Caches/copilot",
    "~/Library/Preferences/com.microsoft.m365copilot.plist",
    "~/Library/WebKit/com.microsoft.m365copilot",
  ]
end
