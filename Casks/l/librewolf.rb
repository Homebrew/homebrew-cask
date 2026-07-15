cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "152.0.6,1"
  sha256 arm:          "4a3b7d9a45a2ede23f5790c6fec6e9924b03bcc0aba3201fad240b37d3f47628",
         intel:        "5014dd8829f03e49572b5dc0612c387ff41ba45417641fea987fbc529a8d1b27",
         arm64_linux:  "477f1fd9f39d333c6ddecf32d30be89963487031e1c6ec03bb8fb4a40d6b6676",
         x86_64_linux: "29377de73cc21e3e53eeb15a6b782e02926a51fb96e22ff5dee620e20522e4d6"

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
