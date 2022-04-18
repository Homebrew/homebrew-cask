cask "alacritty" do
  version "0.10.1"
  sha256 "08b59c3b41bdf369a8ce8ed65c8607eeac2e73672298a04ebf53e7a802b56939"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/completions/_alacritty",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/alacritty.fish"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "#{ENV["HOME"]}/.terminfo")}/61/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "#{ENV["HOME"]}/.terminfo")}/61/alacritty-direct"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-msg.1.gz"

  postflight do
    # Update icon for macOS. Icon is from https://github.com/alacritty/alacritty/pull/4726
    icon_url = "https://github.com/bouk/alacritty/blob/604686ba061c714f37d1db7002258517f062f0d2/extra/osx/Alacritty.app/Contents/Resources/alacritty.icns?raw=true"
    apple_script = <<~EOS
      use framework "AppKit"
      use scripting additions
      set iconURL to current application's NSURL's URLWithString:"#{icon_url}"
      set iconImage to (current application's NSImage's alloc)'s initWithContentsOfURL:iconURL
      set workspace to current application's NSWorkspace's sharedWorkspace()
      workspace's setIcon:iconImage forFile:"#{appdir}/Alacritty.app" options:0
    EOS

    system_command "osascript",
                   args: ["-e", apple_script]
  end

  zap trash: [
    "~/Library/Preferences/io.alacritty.plist",
    "~/Library/Saved Application State/io.alacritty.savedState",
  ]
end
