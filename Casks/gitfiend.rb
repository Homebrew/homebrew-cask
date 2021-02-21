cask "gitfiend" do
  version "0.25.4"
  sha256 "3869802d393cb37a237fb163cab999b30a4585696a4b9f7aedd502cf3589f25d"

  url "https://gitfiend.com/resources/GitFiend-#{version}.dmg"
  appcast "https://gitfiend.com/app-info"
  name "GitFiend"
  desc "Git client designed for humans"
  homepage "https://gitfiend.com/"

  auto_updates true

  app "GitFiend.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gitfiend.wrapper.sh"
  binary shimscript, target: "gitfiend"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/GitFiend.app/Contents/MacOS/GitFiend' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/GitFiend",
    "~/Library/Preferences/com.tobysuggate.gitfiend.plist",
    "~/Library/Saved Application State/com.tobysuggate.gitfiend.savedState",
  ]
end
