cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "153.0,1"
  sha256 arm:          "a08d1b9615c68d2e60808f7ea5d99aac5b8435a0820a9960d7833f2e66f1b652",
         intel:        "76a132df5282e9b00b1bbb5753d3b4550fa7e46a0cdbcec6ff1322b1bff0a242",
         arm64_linux:  "5170551c442616d810ddccb34d0d5fd7ad2681efccd8b789bdbf3a8fc95398c5",
         x86_64_linux: "d119dae6ffb576dbbd0fb0782f0ca799d6a154b65e6b829101eac59aa67301f9"

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
