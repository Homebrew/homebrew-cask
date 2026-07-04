cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "152.0.4,1"
  sha256 arm:          "b115068d7fb392caed297353e88e53abd7e6414febc88d97ac75215d02f1a4aa",
         intel:        "aa4a71a44880c7879c17a707c6c57557e88ce09149e87b91a40eb8094c077fa1",
         arm64_linux:  "361d2a018cb3749dde8a1ce4d691c55a5272f70ef21bd7ec861de7e33b30c270",
         x86_64_linux: "7a309afcb88ab393f316fcfc06a3b860c98c88a288fc7aedecb9336c1e854db8"

  artifact = on_system_conditional macos: "librewolf-#{version.tr(",", "-")}-macos-#{arch}-package.dmg",
                                   linux: "librewolf-#{version.tr(",", "-")}-linux-#{arch}-appimage.AppImage"

  url "https://codeberg.org/api/packages/librewolf/generic/librewolf/#{version.tr(",", "-")}/#{artifact}",
      verified: "codeberg.org/api/packages/librewolf/generic/librewolf/"
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

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    app "LibreWolf.app"
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    shimscript = "#{staged_path}/librewolf.wrapper.sh"
    binary shimscript, target: "librewolf"

    preflight do
      File.write shimscript, <<~EOS
        #!/bin/sh
        exec '#{appdir}/LibreWolf.app/Contents/MacOS/librewolf' "$@"
      EOS
    end

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
    app_image artifact, target: "LibreWolf.AppImage"
  end
end
