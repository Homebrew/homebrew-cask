cask "gitfiend" do
  arch arm: "-arm64"

  version "0.45.3"
  sha256 arm:   "ad3d40ba86badb361f64082b0969a58700fc5960b8bd5a60a781d95b6e1e139e",
         intel: "ad3d40ba86badb361f64082b0969a58700fc5960b8bd5a60a781d95b6e1e139e"

  url "https://gitfiend.com/resources/GitFiend-#{version}#{arch}.dmg"
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
  depends_on macos: ">= :high_sierra"

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
