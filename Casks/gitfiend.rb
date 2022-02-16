cask "gitfiend" do
  version "0.32.0"
  sha256 "ec535eef8bd47b5792298a1d73c729f00da77dc663283c6cd3dfc5ad720dcfdd"

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
    File.write shimscript, <<~EOS
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
