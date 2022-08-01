cask "gitfiend" do
  version "0.35.3"
  sha256 "128c1bcfac29662b92ca3d8909b6f6e6aae8e74649587eeb994474c5c61c6c39"

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
