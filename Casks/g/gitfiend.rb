cask "gitfiend" do
  arch arm: "-arm64"

  version "0.45.3"
  sha256 arm:   "f23c033b28516c6160566439d3217bb8d350dcf2441e29ac629219c6b42a54c5",
         intel: "bff456d1b422c1a40e61fdb8555736740974bee8fc37c17dd693f70bab3872e8"

  url "https://github.com/GitFiend/Support/releases/download/v#{version}/GitFiend-#{version}#{arch}.dmg",
      verified: "github.com/GitFiend/Support/"
  name "GitFiend"
  desc "Git client"
  homepage "https://gitfiend.com/"

  livecheck do
    url "https://gitfiend.com/app-info"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
