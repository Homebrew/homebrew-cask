cask "lbry" do
  version "0.51.1"
  sha256 "8e910d31fff8af3fc626cafc46363927c0e65cc1c85c9f09ea2f618dbe52a68e"

  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg",
      verified: "github.com/lbryio/lbry-desktop/"
  name "LBRY Desktop"
  desc "Official client for LBRY, a decentralised file-sharing and payment network"
  homepage "https://lbry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LBRY.app"
  # shim scripts (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shim_lbrynet = "#{staged_path}/lbrynet.wrapper.sh"
  shim_lbryfirst = "#{staged_path}/libry-first.wrapper.sh"
  binary shim_lbrynet, target: "lbrynet"
  binary shim_lbryfirst, target: "lbry-first"

  preflight do
    IO.write shim_lbrynet, <<~EOS
      #!/bin/sh
      exec '#{appdir}/LBRY.app/Contents/Resources/static/daemon/lbrynet' "$@"
    EOS

    IO.write shim_lbryfirst, <<~EOS
      #!/bin/sh
      exec '#{appdir}/LBRY.app/Contents/Resources/static/lbry-first/lbry-first' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/lbry",
    "~/Library/Preferences/io.lbry.LBRY.plist",
    "~/Library/Saved Application State/io.lbry.LBRY.savedState",
  ]
end
