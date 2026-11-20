cask "ftop" do
  version "0.2.11"
  sha256 "f7ab14e415ea03732a568b804a36113163f16c061b128c0ff6fac769c12e38f8"

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
