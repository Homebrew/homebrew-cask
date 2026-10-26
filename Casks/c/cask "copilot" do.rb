cask "copilot" do
  version "156.0.4314.41,dde69ffb-af77-4d45-96a4-41945ba0a036"
  sha256 "de8a2c0f99cc1a09dbf586e47688ce1adff3de311c78ba179b73ed7157c2f857"

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

  uninstall pkgutil: "com.microsoft.m365copilot"

  zap trash: [
    "~/Library/Caches/copilot",
    "~/Library/Preferences/com.microsoft.m365copilot.plist",
    "~/Library/WebKit/com.microsoft.m365copilot",
  ]
end
