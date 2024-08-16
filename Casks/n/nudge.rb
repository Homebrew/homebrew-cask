cask "nudge" do
  version "2.0.8.81793"
  sha256 "f15d4b1fefaabf4a43ae387fcf6c8a5d8f75035956f0481b2e2043b2471b2826"

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
