cask "qlcolorcode" do
  version "3.1.1"
  sha256 "1ef649b456817a3761ec640cf56ddd9cd20a39c5caf72fd79521edf3da2dd714"

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast "https://github.com/anthonygelibert/QLColorCode/releases.atom"
  name "QLColorCode"
  homepage "https://github.com/anthonygelibert/QLColorCode"

  depends_on formula: "highlight"

  qlplugin "QLColorCode.qlgenerator"

  postflight do
    system_command "/usr/bin/defaults",
                   args: ["write", "org.n8gray.QLColorCode", "pathHL", "#{HOMEBREW_PREFIX}/bin/highlight"]
  end

  zap trash: "~/Library/Preferences/org.n8gray.QLColorCode.plist"
end
