cask "nudge" do
  version "2.1.3.81860"
  sha256 "277353d03208ba12039ebd132aff704199816f5000334913f33f3696f294f19a"

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
