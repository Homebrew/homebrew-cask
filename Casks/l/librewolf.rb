cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "152.0.5,1"
  sha256 arm:          "320b6fb01a448fcdcf0df4a50cae56373b8528c48c02bfed840ddcb65a7b24e3",
         intel:        "881c511556a425984567c810dfa579ab3d777272a92ade47206d56bddf767a09",
         arm64_linux:  "ba2a875f0810cfe889bccdfc4981344704d10782b6c0399f1f8932abd41f9e56",
         x86_64_linux: "6d9f18e0c60c0747ef7ec03d766e633ab1ee71fe60ccda808b183367e9873aa0"

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
