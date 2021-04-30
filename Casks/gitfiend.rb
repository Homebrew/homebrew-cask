cask "gitfiend" do
  version "0.26.0"
  sha256 "33a9de3a5a56f7851e699bb9f5eb4910d8bd14259ce60e71cba115e6ec968e07"

  url "https://gitfiend.com/resources/GitFiend-#{version}.dmg"
  name "GitFiend"
  desc "Git client"
  homepage "https://gitfiend.com/"

  livecheck do
    url "https://gitfiend.com/app-info"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

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
