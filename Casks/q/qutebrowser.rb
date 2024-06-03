cask "qutebrowser" do
  version "3.2.0"
  sha256 "221092f9b7f8153692145a70de49d49be3595196892c3f7120cc5a6dfd271541"

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
