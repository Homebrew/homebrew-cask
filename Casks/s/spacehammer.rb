# frozen_string_literal: true

cask "spacehammer" do
  version "1.6.0"
  sha256 "ccc6d70e296b50a8c8ff461a636eba49d0a1085a58ff4c53c26a8186a548fe27"

  url "https://github.com/agzam/spacehammer/archive/refs/tags/#{version}.tar.gz"
  name "Spacehammer"
  desc "Spacemacs|Doom-inspired modal toolkit for Hammerspoon"
  homepage "https://github.com/agzam/spacehammer"

  # Dependencies are automatically checked by Homebrew
  depends_on cask: "hammerspoon"
  depends_on formula: "luarocks"

  artifact "spacehammer-#{version}", target: "#{Dir.home}/.hammerspoon"

  postflight do
    system_command "#{HOMEBREW_PREFIX}/bin/luarocks",
                   args:         ["install", "fennel"],
                   must_succeed: false
  end

  zap trash: "~/.spacehammer"

  caveats <<~EOS
    Spacehammer has been installed to ~/.hammerspoon

    Spacehammer will automatically create ~/.spacehammer/config.fnl
    for your custom configuration on first launch.

    To start using Spacehammer:
      1. Launch Hammerspoon (if not already running)
      2. Press Option+Space (default LEAD key) to open the modal menu

    Note: brew uninstall will back up your ~/.hammerspoon to the Caskroom.
    Using --zap will also remove ~/.spacehammer (back up git repos first!).

    For more information, visit:
      https://github.com/agzam/spacehammer
  EOS
end
