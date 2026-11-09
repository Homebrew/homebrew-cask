cask "ftop" do
  version "0.2.9"
  sha256 "701648f157d608d34dfad2e9087a4657985565d121fefbd848c3e755cad46e33"

  url "https://github.com/Nongfsq/ftop/releases/download/v#{version}/Ftop-#{version}-arm64.zip"
  name "ftop"
  desc "System monitor tool"
  homepage "https://github.com/Nongfsq/ftop"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Ftop.app"
  binary "#{appdir}/Ftop.app/Contents/MacOS/ftop"

  uninstall quit: "dev.ftop.app"

  zap delete: "/usr/local/libexec/ftop",
      trash:  [
        "~/.config/ftop",
        "~/Library/Preferences/dev.ftop.app.plist",
      ]
end
