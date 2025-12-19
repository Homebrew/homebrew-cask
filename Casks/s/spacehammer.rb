# frozen_string_literal: true

cask "spacehammer" do
  version "1.6.0"
  sha256 "ccc6d70e296b50a8c8ff461a636eba49d0a1085a58ff4c53c26a8186a548fe27"

  url "https://github.com/agzam/spacehammer/archive/refs/tags/#{version}.tar.gz"
  name "Spacehammer"
  desc "Spacemacs|Doom-inspired modal toolkit for Hammerspoon"
  homepage "https://github.com/agzam/spacehammer"

  depends_on cask: "hammerspoon"
  depends_on formula: "fennel"

  artifact "spacehammer-#{version}", target: "#{Dir.home}/.hammerspoon"

  zap trash: "~/.spacehammer"
end
