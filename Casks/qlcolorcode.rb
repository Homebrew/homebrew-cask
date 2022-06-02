cask "qlcolorcode" do
  version Hardware::CPU.intel? ? "4.1.0" : "4.1.2+m1"

  name "QLColorCode"
  desc "QuickLook plug-in that renders source code with syntax highlighting"

  if Hardware::CPU.intel?
    url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
    sha256 "a0f7a97a20cd85eebaef15e399ad29c47711dae2e33e9f51de034f3c8a7a251f"
    homepage "https://github.com/anthonygelibert/QLColorCode"
  else
    url "https://github.com/jpc/QLColorCode/releases/download/release-#{version}/QLColorCode-#{version}.zip"
    sha256 "2cd375ed04ad7c164ebfbdf5ea9dbf9dc99bbb104b044fd70fe389dc2a836e91"
    homepage "https://github.com/jpc/QLColorCode"
  end

  depends_on macos: ">= :mojave"

  qlplugin "QLColorCode.qlgenerator"

  zap trash: "~/Library/Preferences/org.n8gray.QLColorCode.plist"
end
