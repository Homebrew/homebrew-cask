cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.3"
  sha256 arm:          "ca9e6c3d195cc695928fc44f7826fc0f05384cb2dc9d863b9735e4610a162f56",
         intel:        "fa48d07c107a6645c9ce742b47151659850b77dcee52c586d396e57194d379c3",
         arm64_linux:  "1498f82e4e446fc16f6cc3b6ef1c6a8c1fc4ce3200411b06b702cc61d26f6d2d",
         x86_64_linux: "3b6c34502f97d136287086430dcf682a45934e430d12bf608dac6be252455897"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}-#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end
