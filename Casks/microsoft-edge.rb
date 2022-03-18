cask "microsoft-edge" do
  folder = Hardware::CPU.intel? ? "C1297A47-86C4-4C1F-97FA-950631F94777" : "03adf619-38c6-4249-95ff-4a01c0ffc962"
  linkid = Hardware::CPU.intel? ? "2069148" : "2093504"

  version "99.0.1150.46"

  if Hardware::CPU.intel?
    sha256 "ceee06630d5c5eda2515ae147c5c245a78ce0c90eb8fd55c2ca31303e8d45a07"
  else
    sha256 "ff482e1819ecdc9de7474e6d2b13fc65893feb4a0c8a0a9d6d7159bc7f51879b"
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
  depends_on cask: "microsoft-auto-update"

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
    "~/Library/Caches/Microsoft Edge",
    "~/Library/Preferences/com.microsoft.edgemac.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
  ],
      rmdir: "/Library/Application Support/Microsoft"
end
