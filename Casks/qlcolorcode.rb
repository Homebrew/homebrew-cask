cask "qlcolorcode" do
  version "4.0.1"
  sha256 "51c348fa3901a4eef0f260be8c5156b236ab8bbd0f7b30062004a41d76099da7"

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
