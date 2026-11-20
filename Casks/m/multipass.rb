cask "multipass" do
  version "1.17.2"
  sha256 "87bea28b67857eda23d61a5c5133dfd08da6bd082002d44585aa02bbb46dff0a"

  on_arm do
    postflight_steps do
      symlink "/Library/Application Support/com.canonical.multipass/Resources/completions/bash/multipass",
              "{{HOMEBREW_PREFIX}}/etc/bash_completion.d/multipass", remove_on_uninstall: true
    end
  end

  url "https://github.com/canonical/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  name "Multipass"
  desc "Orchestrates virtual Ubuntu instances"
  homepage "https://github.com/canonical/multipass/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  pkg "multipass-#{version}+mac-Darwin.pkg"

  uninstall launchctl: "com.canonical.multipassd",
            pkgutil:   "com.canonical.multipass.*",
            delete:    [
              "#{HOMEBREW_PREFIX}/etc/bash_completion.d/multipass",
              "/Applications/Multipass.app",
              "/Library/Application Support/com.canonical.multipass",
              "/Library/Logs/Multipass",
              "/usr/local/bin/multipass",
              "/usr/local/etc/bash_completion.d/multipass",
            ]

  zap trash: [
    "~/Library/Application Support/com.canonical.multipassGui",
    "~/Library/Application Support/multipass",
    "~/Library/Application Support/multipass-gui",
    "~/Library/LaunchAgents/com.canonical.multipass.gui.autostart.plist",
    "~/Library/Preferences/multipass",
    "~/Library/Saved Application State/com.canonical.multipassGui.savedState",
  ]
end
