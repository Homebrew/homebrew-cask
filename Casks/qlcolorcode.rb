cask "qlcolorcode" do
  version "4.0.0"
  sha256 "99f74e6cef85d651a5f189d2ee70ae88f9a75b95cac7a62e4c99f759ae8e2620"

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast "https://github.com/anthonygelibert/QLColorCode/releases.atom"
  name "QLColorCode"
  desc "QuickLook plug-in that renders source code with syntax highlighting"
  homepage "https://github.com/anthonygelibert/QLColorCode"

  depends_on formula: "highlight"
  depends_on macos: ">= :catalina"

  qlplugin "QLColorCode.qlgenerator"

  postflight do
    system_command "/usr/bin/defaults",
                   args: ["write", "org.n8gray.QLColorCode", "pathHL", "#{HOMEBREW_PREFIX}/bin/highlight"]
  end

  zap trash: "~/Library/Preferences/org.n8gray.QLColorCode.plist"
end
