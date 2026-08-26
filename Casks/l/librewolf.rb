cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "package.dmg", linux: "appimage.AppImage"

  version "154.0.1,2"
  sha256 arm:          "a36564f26f66923773472f252f418367fd8702824060c0a0f3149a3ab23a72bb",
         intel:        "6570176d30ac3c21c835954989356f0e70ec3c641570b580518e4db0083bad51",
         arm64_linux:  "48b242afeeeb1e0b051df92c76eb5a629c9098676cf71d1a59f0dd83dc990ca8",
         x86_64_linux: "aa1c209bad240e026409fade345a784c7f145320e43dbb419b5511de2c006856"

  on_macos do
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
