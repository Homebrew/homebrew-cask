cask "nudge" do
  version "2.1.4.81863"
  sha256 "361ef3210b109100dbe4993be0acf7d54090645bb877c02f3b1cf105df3e1c2c"

  url "https://github.com/macadmins/nudge/releases/download/v#{version}/Nudge-#{version}.pkg"
  name "Nudge"
  desc "Application for enforcing OS updates"
  homepage "https://github.com/macadmins/nudge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  pkg "Nudge-#{version}.pkg"
  command_wrapper "nudge",
                  executable: "/Applications/Utilities/Nudge.app/Contents/MacOS/Nudge"

  uninstall pkgutil: "com.github.macadmins.Nudge"

  zap trash: "~/Library/Preferences/com.github.macadmins.Nudge.plist"

  caveats <<~EOS
    Launchctl integration must be installed separately. For the download, see

      https://github.com/macadmins/nudge/releases/latest
  EOS
end
