cask "pd-runner" do
  version "0.3.6"
  sha256 "df9f9792034c689f881d45e0f0bd6c802b57a879779747302e59cbd37bfee673"

  url "https://github.com/lihaoyun6/PD-Runner/releases/download/#{version}/PD-Runner_v#{version}_Universal2.dmg"
  name "PD Runner"
  desc "VM launcher for Parallels Desktop"
  homepage "https://github.com/lihaoyun6/PD-Runner/"

  app "PD Runner.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.lihaoyun6.PD-Runner-Helper.plist",
    "/Library/PrivilegedHelperTools/com.lihaoyun6.PD-Runner-Helper",
  ]

  zap trash: "~/Library/Preferences/com.lihaoyun6.PD-Runner.plist"
end
