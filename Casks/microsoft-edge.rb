cask "microsoft-edge" do
  folder = Hardware::CPU.intel? ? "C1297A47-86C4-4C1F-97FA-950631F94777" : "03adf619-38c6-4249-95ff-4a01c0ffc962"
  linkid = Hardware::CPU.intel? ? "2069148" : "2093504"

  version "103.0.1264.44"

  if Hardware::CPU.intel?
    sha256 "49ae051c3f4207ceb8b7a53068d8912b3939f544e9f97464abe3a26d67f8447c"
  else
    sha256 "ce7a9e6ba5e2dc22424a9198ee68c0a06b6aeafae7afb6b71868c432a6fe60aa"
  end

  url "https://officecdn-microsoft-com.akamaized.net/pr/#{folder}/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/"
  name "Microsoft Edge"
  desc "Web browser"
  homepage "https://www.microsoft.com/edge"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    strategy :header_match
  end

  auto_updates true

  pkg "MicrosoftEdge-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.microsoft.edgemac"

  zap trash: [
        "~/Library/Application Support/Microsoft Edge",
        "~/Library/Application Support/Microsoft/EdgeUpdater",
        "~/Library/Caches/Microsoft Edge",
        "~/Library/Preferences/com.microsoft.edgemac.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
      ],
      rmdir: "/Library/Application Support/Microsoft"
end
