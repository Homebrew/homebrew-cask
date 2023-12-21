cask "qutebrowser" do
  version "3.1.0"
  sha256 "02fbaec149f131caf67a467f3b514bff8222cd5d5a4cc85736b6dfd52c0d63b5"

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

  zap trash: [
        "~/Library/Application Support/qutebrowser",
        "~/Library/Caches/qutebrowser",
        "~/Library/Preferences/qutebrowser",
      ],
      rmdir: "~/.qutebrowser"

  caveats do
    requires_rosetta
  end
end
