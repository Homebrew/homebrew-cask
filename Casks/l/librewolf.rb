cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "150.0.2,1"
  sha256 arm:   "3a22fd5f41d06afca48613addb9b5eaefc5277a2294490da31ec071fc7d6769a",
         intel: "a60aa45d4a7317378aaab6259298fec406b3079d5e79da7aaadecbe58e846fea"

  url "https://codeberg.org/api/packages/librewolf/generic/librewolf/#{version.tr(",", "-")}/librewolf-#{version.tr(",", "-")}-macos-#{arch}-package.dmg",
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

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
