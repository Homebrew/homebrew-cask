cask "qutebrowser" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.0"
  sha256 arm:   "89bede17bb26cd0e72cd4f2d8a55b42109133c8ad358a358e8bd1816489f05cd",
         intel: "f2405d1c672b02dfdbdfc754dae9bdd1c14bc1e97602e7a339d35378eb63d816"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}-#{arch}.dmg",
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

  zap trash: [
        "~/Library/Application Support/qutebrowser",
        "~/Library/Caches/qutebrowser",
        "~/Library/Preferences/qutebrowser",
      ],
      rmdir: "~/.qutebrowser"
end
