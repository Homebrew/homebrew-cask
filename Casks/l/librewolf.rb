cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "package.dmg", linux: "appimage.AppImage"

  version "158.0.1,2"
  sha256 arm:          "974703e22c5710529b0dc0e14259eafbb9e2d4767180353da722c2f25db0d81e",
         intel:        "e4dec3240e6c43c4ad595d4ccaf1d84356303702303523f575f63fc1d1326334",
         arm64_linux:  "7fc1005153b2fa64d4d378b013275e73686422517c475afe2f56d1ae1f077dc8",
         x86_64_linux: "9225fd93235ea366f6f55b1d5f5596dde7b3f6b3bae7248d967d6abffba3e07b"

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
