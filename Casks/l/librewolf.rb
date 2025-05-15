cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "138.0.3,1"
  sha256 arm:   "60cc3bf06d102e43bcf5e0623d638e16e6b6c5a04e6f48ab5a9db51bd94b2504",
         intel: "59007dabae5bcdb22f6b1c34d132aada4f325ad287ed33c624328b15df997949"

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

  depends_on macos: ">= :catalina"

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
