cask "gitfiend" do
  version "0.24.1"
  sha256 "6fd13cf029f9fb7d2d275b8a498aa5a59a48a5e711b7567370d44b2a6272f466"

  url "https://gitfiend.com/resources/GitFiend-#{version}.dmg"
  appcast "https://gitfiend.com/app-info"
  name "GitFiend"
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
