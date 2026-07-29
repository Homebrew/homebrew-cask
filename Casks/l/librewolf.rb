cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos-#{arch}-package.dmg", linux: "linux-#{arch}-appimage.AppImage"

  version "153.0.1,1"
  sha256 arm:          "12f94015488b7953902f0cb05117633ac502869687c4c710c93c4ac496d04d18",
         intel:        "f274c91ea4bcec1f17cb17943c9d4aea35bad892be6632c0f5df0f24559f27be",
         arm64_linux:  "a00409ddbe1efe97da246c464055fffda32db741b15af2b0b22c53363fc97bae",
         x86_64_linux: "94954263d8db3245499e51ba5c1e447f895ce8010bfbd077fddaf358e76a4c9f"

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
