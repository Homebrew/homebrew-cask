cask "qlcolorcode" do
  version "4.0.2"
  sha256 "07d11cc54a28c2015b9cf298c4fe4a6fc3de14b9f2fd5f486de0d349fa4c3ee9"

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
                   args: ["delete", "org.n8gray.QLColorCode", "pathHL"]
  end

  zap trash: "~/Library/Preferences/org.n8gray.QLColorCode.plist"
end
