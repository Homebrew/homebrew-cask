cask "ftop" do
  version "0.2.10"
  sha256 "cc3c538a1fc77eb8b6a49ffde889f8b17080cfbc3480de79e00fbbd518431ad7"

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
