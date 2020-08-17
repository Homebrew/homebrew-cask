cask "qlcolorcode" do
  version "3.0.0"
  sha256 "60f03981a9e3595cc739f21cba911cd383857be32d1c767ae77d8c9e81b57b12"

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
