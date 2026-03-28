cask "nudge" do
  version "2.1.1.81855"
  sha256 "9e9ddcb8b2295bc833e69dbc0cb88bf4e4c56224938c9fcf548f4308b045670f"

  url "https://github.com/macadmins/nudge/releases/download/v#{version}/Nudge-#{version}.pkg"
  name "Nudge"
  desc "Application for enforcing OS updates"
  homepage "https://github.com/macadmins/nudge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  pkg "Nudge-#{version}.pkg"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/nudge.wrapper.sh"
  binary shimscript, target: "nudge"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '/Applications/Utilities/Nudge.app/Contents/MacOS/Nudge' "$@"
    EOS
  end

  uninstall pkgutil: "com.github.macadmins.Nudge"

  zap trash: "~/Library/Preferences/com.github.macadmins.Nudge.plist"

  caveats <<~EOS
    Launchctl integration must be installed separately. For the download, see

      https://github.com/macadmins/nudge/releases/latest
  EOS
end
