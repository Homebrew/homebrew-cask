cask "synergy" do
  version "1.13.0,bdb8f767"
  sha256 "94796404c500d0c396d94a21e541fe3dca08bb7d491815f741f093bfe3b26ffa"

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/#{version.before_comma}-stable-#{version.after_comma}/synergy_#{version.before_comma}-stable.#{version.after_comma}_macos_x86-64.dmg"
  appcast "https://github.com/symless/synergy-core/releases.atom"
  name "Synergy"
  desc "Keyboard and mouse sharing tool - open-source core"
  homepage "https://symless.com/synergy"

  app "Synergy.app"
end
