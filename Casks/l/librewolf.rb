cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "package.dmg", linux: "appimage.AppImage"

  version "158.0.1,1"
  sha256 arm:          "196c30edd4f3e2499a8d959967a6944fc2fb4784e09bab01cf569daf682dac0f",
         intel:        "c06c0b2908d890b45a6a97aabdedff705c45f2ded896f6ce01c2e912cbace6e5",
         arm64_linux:  "35b430958e0f753a1db9c01835f664aeaec29532ead2519613f4f43aac84fac8",
         x86_64_linux: "9df3e8733572730b5610a21cf4ab095b5023d1bdd9688767156a4bc5cef98fab"

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
