cask "font-menlo-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/abertsch/Menlo-for-Powerline/archive/master.zip"
  name "Menlo for Powerline"
  homepage "https://github.com/abertsch/Menlo-for-Powerline"

  font "Menlo-for-Powerline-master/Menlo for Powerline.ttf"
  font "Menlo-for-Powerline-master/Menlo Bold for Powerline.ttf"
  font "Menlo-for-Powerline-master/Menlo Italic for Powerline.ttf"
  font "Menlo-for-Powerline-master/Menlo Bold Italic for Powerline.ttf"

  # No zap stanza required
end
