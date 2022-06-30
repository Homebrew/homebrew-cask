cask "microsoft-edge" do
  folder = Hardware::CPU.intel? ? "C1297A47-86C4-4C1F-97FA-950631F94777" : "03adf619-38c6-4249-95ff-4a01c0ffc962"
  linkid = Hardware::CPU.intel? ? "2069148" : "2093504"

  version "103.0.1264.37"

  if Hardware::CPU.intel?
    sha256 "8b3fc5297e5e6f4b39b7500c520ac50127a1e6879f2ef49145c77ab0a04f0c41"
  else
    sha256 "aa0f67ad50d4aec47b980e3c8f595a717321f1d6c0ade42481672d6a8fa6c84d"
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
