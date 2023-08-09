cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "116.0.2,1"
    sha256 "353e833ccaeb9f0dbe3454dfcb56c960b3390d84c27b39e0ddb288bd4e3dbf3d"
  end
  on_intel do
    version "116.0.2,1"
    sha256 "71677ce783650c89c067838f6f21130c3a4c0e4d6112c7cdc294604a6298038a"
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
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
