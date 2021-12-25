cask "pd-runner" do
  version "0.3.5"
  sha256 "c0b96c361891c6d40854da77a05cb412a7e3e22cc349f7fef5abd35534fa0150"

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
