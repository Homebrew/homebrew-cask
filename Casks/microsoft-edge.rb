cask "microsoft-edge" do
  folder = Hardware::CPU.intel? ? "C1297A47-86C4-4C1F-97FA-950631F94777" : "03adf619-38c6-4249-95ff-4a01c0ffc962"
  linkid = Hardware::CPU.intel? ? "2069148" : "2093504"

  version "99.0.1150.55"

  if Hardware::CPU.intel?
    sha256 "201e68e4c1676fe1f16f5dbe21b581df128420e59b46a3ea79d80adfc55a0d57"
  else
    sha256 "95a9465568d8d983bb56c27ccaca1335035100832fa35a611a5cc95e6a6ae338"
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
