cask "cline-app" do
  version "0.0.49"
  sha256 "eb7fc7365073f7011f9400a03437eee97426b7aa8332ae8aeaadd50c691f5bab"

  url "https://github.com/cline/cline/releases/download/desktop-v#{version}/Cline_#{version}_universal.dmg"
  name "Cline"
  name "Cline Desktop"
  desc "AI coding agent"
  homepage "https://cline.bot/"

  livecheck do
    url :url
    regex(/^desktop-v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on :macos

  app "Cline.app"

  uninstall_postflight_steps do
    # The app leaves its bundled backend running after quitting.
    terminate_process(
      "{{appdir}}/Cline.app/Contents/MacOS/code-sidecar",
      match:        :full,
      must_succeed: false,
    )
  end

  uninstall quit: "bot.cline.app"

  zap trash: [
    "~/Library/Application Support/bot.cline.app",
    "~/Library/Caches/bot.cline.app",
    "~/Library/Preferences/bot.cline.app.plist",
    "~/Library/Saved Application State/bot.cline.app.savedState",
    "~/Library/WebKit/bot.cline.app",
  ]
end
