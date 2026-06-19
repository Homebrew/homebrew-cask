cask "microsoft-365-copilot" do
  version "1.2606.0801"
  sha256 "334b47a40de9e2adddc225399a0335464a00a4f2059c2578e6e0ff2fb424733d"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_365_Copilot_universal_#{version}_Installer.pkg",
      verified: "res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/"
  name "Microsoft 365 Copilot"
  desc "AI-first productivity assistant for Microsoft 365"
  homepage "https://www.microsoft.com/en-us/microsoft-365-copilot/download-copilot-app"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2325438"
    regex(%r{/Microsoft[._-]365[._-]Copilot.*?_(\d+(?:\.\d+)+)_[^/]*\.pkg}i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "Microsoft_365_Copilot_universal_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall quit:    "com.microsoft.autoupdate2",
            pkgutil: "com.microsoft.m365copilot"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.m365copilot",
    "~/Library/Containers/com.microsoft.m365copilot",
    "~/Library/Preferences/com.microsoft.m365copilot.plist",
  ]
end
