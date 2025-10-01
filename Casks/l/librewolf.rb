cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "143.0.3,1"
  sha256 arm:   "4e797236620a769c680dc7de1683e4cc8947ce4441ab356d6d2478cea86cc6e8",
         intel: "eca2d7029e63f4f2518471e4973aaadf9de6e478f8561b922c8f79d6a46bac35"

  url "https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/#{version.tr(",", "-")}/librewolf-#{version.tr(",", "-")}-macos-#{arch}-package.dmg",
      verified: "gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/librewolf-community/browser/bsys6.git"
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.map { |tag| tag[regex, 1]&.tr("-", ",") }
    end
  end

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
