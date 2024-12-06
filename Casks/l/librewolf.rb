cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "133.0,3"
    sha256 "07adb6bc864a740bc3f09dae057bd2ffb10d07574277b9b1c30334b19edafeff"
  end
  on_intel do
    version "133.0,3"
    sha256 "c2f07b52f3231bf715d4e1ef54428ca797b799edc84791d257970387cd151639"
  end

  url "https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/#{version.csv.first}-#{version.csv.second}/librewolf-#{version.csv.first}-#{version.csv.second}-macos-#{arch}-package.dmg",
      verified: "gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/44042130/releases"
    regex(/librewolf[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]macos[._-]#{arch}[._-]package\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]},#{match[1]}"
      end
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
