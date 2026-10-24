cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "19.3.0"
  sha256 arm:          "d01cec455fe078f39dccfc66d650afa3eceba3fab2f3598b445e5e94f7cceb90",
         intel:        "11c481321432c5f4456716c142018f6272f21b8ef593972d489645b2fd6c5333",
         x86_64_linux: "3e058c1a0ebdaf946c3bdf304fddb34e3870528d5cac29b62df064508b28176c"

  on_macos do
    depends_on macos: :ventura

    app "Super Productivity.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.super-productivity.app.sfl*",
      "~/Library/Application Support/superProductivity",
      "~/Library/Logs/superProductivity",
      "~/Library/Preferences/com.super-productivity.app.plist",
      "~/Library/Saved Application State/com.super-productivity.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superProductivity-#{arch}.AppImage", target: "Super Productivity.AppImage"

    zap trash: "~/.config/superProductivity"
  end

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.#{url_end}"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
