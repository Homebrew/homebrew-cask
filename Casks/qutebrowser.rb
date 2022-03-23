cask "qutebrowser" do
  version "2.4.0"
  sha256 "6c941f9f58742b70e9689300ba663b7797fccbf21c96bde3cc408e2b6c04837a"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg",
      verified: "github.com/qutebrowser/qutebrowser/"
  name "qutebrowser"
  desc "Keyboard-driven, vim-like browser based on PyQt5"
  homepage "https://www.qutebrowser.org/"

  app "qutebrowser.app"

  zap trash: [
    "~/Library/Application Support/qutebrowser",
    "~/Library/Caches/qutebrowser",
    "~/Library/Preferences/qutebrowser",
  ]

  caveats <<~EOS
    If you're using macOS Catalina or newer, you may
    get an error similar to the following when attempting
    to launch qutebrowser:

      "qutebrowser.app" is damaged and can't be opened.

    To bypass this error, run:

      sudo xattr -rd com.apple.quarantine "#{appdir}/qutebrowser.app"

    You don't need to run this command again on subsequent launches.
    For more information, see this qutebrowser issue:

      https://github.com/qutebrowser/qutebrowser/issues/6771
  EOS
end
