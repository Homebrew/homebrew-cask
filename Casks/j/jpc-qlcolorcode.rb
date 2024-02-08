cask "jpc-qlcolorcode" do
  version "4.1.2+m1"
  sha256 "2cd375ed04ad7c164ebfbdf5ea9dbf9dc99bbb104b044fd70fe389dc2a836e91"

  url "https://github.com/jpc/QLColorCode/releases/download/release-#{version}/QLColorCode-#{version}.zip"
  name "QLColorCode"
  desc "Quick Look plug-in that renders source code with syntax highlighting"
  homepage "https://github.com/jpc/QLColorCode"

  depends_on macos: ">= :mojave"

  qlplugin "QLColorCode.qlgenerator"

  zap trash: "~/Library/Preferences/org.n8gray.QLColorCode.plist"
end
