cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos-#{arch}-package.dmg", linux: "linux-#{arch}-appimage.AppImage"

  version "153.0.3,1"
  sha256 arm:          "cf28a2c610cd8be0f698b52c1fb6e530d17be09fb43aba798e762d8423b35950",
         intel:        "031050b89658c380d91f2658bfae7ff7f1297be4fabc240f45f15ef506d2aa75",
         arm64_linux:  "5a20e87564950dc6edcceba9969206664d4df24f7811c4ef545b6cd217fa0807",
         x86_64_linux: "85da8f1bca931c4f1a2cea9140dd846da9cf2868afe085f556b0e5d637e8467d"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    app "LibreWolf.app"
    command_wrapper "librewolf",
                    executable: "#{appdir}/LibreWolf.app/Contents/MacOS/librewolf"

    zap trash: [
      "~/.librewolf",
      "~/Library/Application Support/LibreWolf",
      "~/Library/Caches/LibreWolf Community",
      "~/Library/Caches/LibreWolf",
      "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
      "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
    ]
  end
  on_linux do
    app_image "librewolf-#{version.tr(",", "-")}-linux-#{arch}-appimage.AppImage",
              target: "LibreWolf.AppImage"
  end

  url "https://codeberg.org/api/packages/librewolf/generic/librewolf/#{version.tr(",", "-")}/librewolf-#{version.tr(",", "-")}-#{os}"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check the "latest" release instead
  # of the Git tags.
  livecheck do
    url "https://codeberg.org/api/v1/repos/librewolf/bsys6/releases/latest"
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :json do |json, regex|
      json["tag_name"]&.[](regex, 1)&.tr("-", ",")
    end
  end
end
