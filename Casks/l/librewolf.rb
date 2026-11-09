cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "package.dmg", linux: "appimage.AppImage"

  version "159.0.1,1"
  sha256 arm:          "ed92b13a015059fda2e27e8b2c5de7d801843e5fa0d7ee92b11bd487f5c68bf4",
         intel:        "af20edd7183c5e6f3344790f5d3cc7eaee2c8edbf5d6f56ceb8867deda29b1b3",
         arm64_linux:  "3f0da1b717a2ea7908479d952d73b962a8d0ec8d7e5b2a8bc1e6daf3f2a06a5b",
         x86_64_linux: "06bc32a7e83759d454c9188a71b236b13f82a81ac5f2a65ffb13aa94a7151724"

  on_macos do
    auto_updates true

    app "LibreWolf.app"
    command_wrapper "librewolf",
                    executable: "#{appdir}/LibreWolf.app/Contents/MacOS/librewolf"

    zap trash: [
      "~/.librewolf",
      "~/Library/Application Support/LibreWolf",
      "~/Library/Caches/LibreWolf Community",
      "~/Library/Caches/LibreWolf",
      "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
      "~/Library/Preferences/net.librewolf.librewolf.plist",
      "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
    ]
  end
  on_linux do
    app_image "librewolf-#{version.tr(",", "-")}-linux-#{arch}-appimage.AppImage",
              target: "LibreWolf.AppImage"

    zap trash: [
      "~/.cache/librewolf",
      "~/.config/librewolf",
      "~/.librewolf",
    ]
  end

  url "https://dl.librewolf.net/librewolf/#{version.tr(",", "-")}/librewolf-#{version.tr(",", "-")}-#{os}-#{arch}-#{url_end}"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check the "latest" release instead
  # of the Git tags.
  livecheck do
    url "https://librewolf.dev/api/v1/repos/librewolf/bsys6/releases/latest"
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :json do |json, regex|
      json["tag_name"]&.[](regex, 1)&.tr("-", ",")
    end
  end
end
