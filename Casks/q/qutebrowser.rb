cask "qutebrowser" do
  version "3.0.0"
  sha256 "4c58795008d4df8b3412cb4dc5058fc55bf49b462bc922ade7229d8781e5d297"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg",
      verified: "github.com/qutebrowser/qutebrowser/"
  name "qutebrowser"
  desc "Keyboard-driven, vim-like browser based on PyQt5"
  homepage "https://www.qutebrowser.org/"

  app "qutebrowser.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/qutebrowser.wrapper.sh"
  binary shimscript, target: "qutebrowser"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/qutebrowser.app/Contents/MacOS/qutebrowser' "$@"
    EOS
  end

  zap rmdir: "~/.qutebrowser",
      trash: [
        "~/Library/Application Support/qutebrowser",
        "~/Library/Caches/qutebrowser",
        "~/Library/Preferences/qutebrowser",
      ]
end
