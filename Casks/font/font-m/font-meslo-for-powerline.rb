cask "font-meslo-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts.git",
      branch: "master"
  name "Meslo for Powerline"
  homepage "https://github.com/powerline/fonts"

  font "Meslo Slashed/Meslo LG L Regular for Powerline.ttf"
  font "Meslo Slashed/Meslo LG L Bold for Powerline.ttf"
  font "Meslo Slashed/Meslo LG L Italic for Powerline.ttf"
  font "Meslo Slashed/Meslo LG L Bold Italic for Powerline.ttf"
  font "Meslo Slashed/Meslo LG M Regular for Powerline.ttf"
  font "Meslo Slashed/Meslo LG M Bold for Powerline.ttf"
  font "Meslo Slashed/Meslo LG M Italic for Powerline.ttf"
  font "Meslo Slashed/Meslo LG M Bold Italic for Powerline.ttf"
  font "Meslo Slashed/Meslo LG S Regular for Powerline.ttf"
  font "Meslo Slashed/Meslo LG S Bold for Powerline.ttf"
  font "Meslo Slashed/Meslo LG S Italic for Powerline.ttf"
  font "Meslo Slashed/Meslo LG S Bold Italic for Powerline.ttf"
  font "Meslo Dotted/Meslo LG L DZ Regular for Powerline.ttf"
  font "Meslo Dotted/Meslo LG L DZ Bold for Powerline.ttf"
  font "Meslo Dotted/Meslo LG L DZ Italic for Powerline.ttf"
  font "Meslo Dotted/Meslo LG L DZ Bold Italic for Powerline.ttf"
  font "Meslo Dotted/Meslo LG M DZ Regular for Powerline.ttf"
  font "Meslo Dotted/Meslo LG M DZ Bold for Powerline.ttf"
  font "Meslo Dotted/Meslo LG M DZ Italic for Powerline.ttf"
  font "Meslo Dotted/Meslo LG M DZ Bold Italic for Powerline.ttf"
  font "Meslo Dotted/Meslo LG S DZ Regular for Powerline.ttf"
  font "Meslo Dotted/Meslo LG S DZ Bold for Powerline.ttf"
  font "Meslo Dotted/Meslo LG S DZ Italic for Powerline.ttf"
  font "Meslo Dotted/Meslo LG S DZ Bold Italic for Powerline.ttf"

  # No zap stanza required
end
