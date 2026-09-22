cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "package.dmg", linux: "appimage.AppImage"

  version "156.0.1,1"
  sha256 arm:          "d67ebcc8f3711b398979facfec9a5cf086fb055a81f8b95094bb2d81c9dc0061",
         intel:        "97d83fdf212469178c082db7c02aaff51d4bc98b5980b85b9873f7e0a8a7bd8a",
         arm64_linux:  "df576e73a89e2f8bd942f5b5963e234f8354bea71a7cbd422423f9c1fd705525",
         x86_64_linux: "76a6bc519970ef4074729cd40ffb4c2c261d3b9a2f24aeeeb2ecfe83f066ffc7"

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
