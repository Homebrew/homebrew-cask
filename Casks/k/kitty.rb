cask "kitty" do
  arch arm: "arm64", intel: "x86_64"
  os macos: ".dmg", linux: "-#{arch}.txz"

  version "0.51.1"
  sha256 arm:          "7a1c492103d7e5ff825351bdda1833bdf6f95d33da9e1ae22e52f61cc5ec013e",
         intel:        "7a1c492103d7e5ff825351bdda1833bdf6f95d33da9e1ae22e52f61cc5ec013e",
         arm64_linux:  "9c3e8e38a5068c511e3a94e065cbd2c5af4922d76d2d205d5084018e8572648d",
         x86_64_linux: "d309be978f017dbdcccae175d281092fefe7c8bc64478fa620581604ab0b53c0"

  on_macos do
    depends_on macos: :monterey

    app "kitty.app"
    command_wrapper "kitty",
                    executable: "#{appdir}/kitty.app/Contents/MacOS/kitty"
    command_wrapper "kitten",
                    executable: "#{appdir}/kitty.app/Contents/MacOS/kitten"

    zap trash: [
      "~/Library/Caches/kitty",
      "~/Library/Preferences/kitty",
      "~/Library/Preferences/net.kovidgoyal.kitty.plist",
      "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
    ]
  end
  on_linux do
    binary "bin/kitty"
    binary "bin/kitten"
    manpage "share/man/man1/kitty.1"
    manpage "share/man/man1/kitten.1"
    manpage "share/man/man1/kitten-@.1"
    manpage "share/man/man1/kitten-@-action.1"
    manpage "share/man/man1/kitten-@-close-tab.1"
    manpage "share/man/man1/kitten-@-close-window.1"
    manpage "share/man/man1/kitten-@-create-marker.1"
    manpage "share/man/man1/kitten-@-detach-tab.1"
    manpage "share/man/man1/kitten-@-detach-window.1"
    manpage "share/man/man1/kitten-@-disable-ligatures.1"
    manpage "share/man/man1/kitten-@-env.1"
    manpage "share/man/man1/kitten-@-focus-tab.1"
    manpage "share/man/man1/kitten-@-focus-window.1"
    manpage "share/man/man1/kitten-@-get-colors.1"
    manpage "share/man/man1/kitten-@-get-text.1"
    manpage "share/man/man1/kitten-@-goto-layout.1"
    manpage "share/man/man1/kitten-@-kitten.1"
    manpage "share/man/man1/kitten-@-last-used-layout.1"
    manpage "share/man/man1/kitten-@-launch.1"
    manpage "share/man/man1/kitten-@-load-config.1"
    manpage "share/man/man1/kitten-@-ls.1"
    manpage "share/man/man1/kitten-@-new-window.1"
    manpage "share/man/man1/kitten-@-remove-marker.1"
    manpage "share/man/man1/kitten-@-resize-os-window.1"
    manpage "share/man/man1/kitten-@-resize-window.1"
    manpage "share/man/man1/kitten-@-run.1"
    manpage "share/man/man1/kitten-@-scroll-window.1"
    manpage "share/man/man1/kitten-@-select-window.1"
    manpage "share/man/man1/kitten-@-send-key.1"
    manpage "share/man/man1/kitten-@-send-text.1"
    manpage "share/man/man1/kitten-@-set-background-image.1"
    manpage "share/man/man1/kitten-@-set-background-opacity.1"
    manpage "share/man/man1/kitten-@-set-colors.1"
    manpage "share/man/man1/kitten-@-set-enabled-layouts.1"
    manpage "share/man/man1/kitten-@-set-font-size.1"
    manpage "share/man/man1/kitten-@-set-spacing.1"
    manpage "share/man/man1/kitten-@-set-tab-color.1"
    manpage "share/man/man1/kitten-@-set-tab-title.1"
    manpage "share/man/man1/kitten-@-set-user-vars.1"
    manpage "share/man/man1/kitten-@-set-window-logo.1"
    manpage "share/man/man1/kitten-@-set-window-title.1"
    manpage "share/man/man1/kitten-@-signal-child.1"
    manpage "share/man/man1/kitten-ask.1"
    manpage "share/man/man1/kitten-broadcast.1"
    manpage "share/man/man1/kitten-choose-files.1"
    manpage "share/man/man1/kitten-choose-fonts.1"
    manpage "share/man/man1/kitten-clipboard.1"
    manpage "share/man/man1/kitten-command-palette.1"
    manpage "share/man/man1/kitten-desktop-ui.1"
    manpage "share/man/man1/kitten-diff.1"
    manpage "share/man/man1/kitten-dnd.1"
    manpage "share/man/man1/kitten-edit-in-kitty.1"
    manpage "share/man/man1/kitten-hints.1"
    manpage "share/man/man1/kitten-hyperlinked-grep.1"
    manpage "share/man/man1/kitten-icat.1"
    manpage "share/man/man1/kitten-mouse-demo.1"
    manpage "share/man/man1/kitten-notify.1"
    manpage "share/man/man1/kitten-panel.1"
    manpage "share/man/man1/kitten-query-terminal.1"
    manpage "share/man/man1/kitten-quick-access-terminal.1"
    manpage "share/man/man1/kitten-remote-file.1"
    manpage "share/man/man1/kitten-run-shell.1"
    manpage "share/man/man1/kitten-show-key.1"
    manpage "share/man/man1/kitten-ssh.1"
    manpage "share/man/man1/kitten-themes.1"
    manpage "share/man/man1/kitten-transfer.1"
    manpage "share/man/man1/kitten-unicode-input.1"
    manpage "share/man/man1/kitten-update-self.1"
    manpage "share/man/man5/kitty.conf.5"

    zap trash: "~/.cache/kitty"
  end

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}#{os}"
  name "kitty"
  desc "GPU-based terminal emulator"
  homepage "https://github.com/kovidgoyal/kitty"

  conflicts_with cask: "kitty@nightly"
end
