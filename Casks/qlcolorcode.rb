cask "qlcolorcode" do
  version "3.0.2"
  sha256 "7b4b0d51854de546c247895e519d6dbcb3b6722f9d430b18a10a1a898ca7a4ca"

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
