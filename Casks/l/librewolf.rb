cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "153.0,3"
  sha256 arm:          "57a31fbb580ebd45d462280b246d3f7fc885e4367741f1ab54742c6b65284a91",
         intel:        "0c96e8596ab22f36dc7b95223d843937f01475525f09c6311e8b914b699b0275",
         arm64_linux:  "93fb3c3eee298d56bbca77800c040a5193679d98c78fc8fe59ac37a48973e43a",
         x86_64_linux: "ca07961e3f1a19e5b856b36c645c3c460a785dc114ffa0a63bd0a5d4835c8203"

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

    command_wrapper "librewolf.wrapper.sh",
                    target:  "librewolf",
                    content: <<~EOS
                      #!/bin/sh
                      exec '#{appdir}/LibreWolf.app/Contents/MacOS/librewolf' "$@"
                    EOS

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
