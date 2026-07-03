cask "kitty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.47.4"
  container_ext = on_system_conditional linux: "-#{arch}.txz", macos: ".dmg"

  sha256 macos:        "b53b9b18a27d53ad44a25dd6776fde8c47487b4e103ac50d682af1ee8e7b77ed",
         arm64_linux:  "998216e2662b4d2237f10e21dfec5f4e916063f1b6c17f96edae08212e91d0fa",
         x86_64_linux: "bc230142b2bd27f2a4bf1b1b67575f3d397a4ea2cc83f4ac2b912c306a939693"

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}#{container_ext}"
  name "kitty"
  desc "GPU-based terminal emulator"
  homepage "https://github.com/kovidgoyal/kitty"

  conflicts_with cask: "kitty@nightly"

  on_macos do
    depends_on macos: :monterey

    app "kitty.app"
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    kitty_shimscript = "#{staged_path}/kitty.wrapper.sh"
    binary kitty_shimscript, target: "kitty"
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    kitten_shimscript = "#{staged_path}/kitten.wrapper.sh"
    binary kitten_shimscript, target: "kitten"

    preflight do
      File.write kitty_shimscript, <<~EOS
        #!/bin/sh
        exec '#{appdir}/kitty.app/Contents/MacOS/kitty' "$@"
      EOS
      File.write kitten_shimscript, <<~EOS
        #!/bin/sh
        exec '#{appdir}/kitty.app/Contents/MacOS/kitten' "$@"
      EOS
    end
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
  end

  zap trash: [
    "~/.config/kitty",
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Preferences/net.kovidgoyal.kitty.plist",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
