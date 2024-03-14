cask "nudge" do
  version "1.1.16.81564"
  sha256 "1b1e40bec582cd5832e345e11235f7ccea4d24fa54776692e07ffa0b17588b94"

  url "https://github.com/macadmins/nudge/releases/download/v#{version}/Nudge-#{version}.pkg"
  name "Nudge"
  desc "Application for enforcing OS updates"
  homepage "https://github.com/macadmins/nudge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

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
