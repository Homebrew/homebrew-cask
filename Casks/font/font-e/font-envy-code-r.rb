cask "font-envy-code-r" do
  version "PR7"
  sha256 "9f7e9703aaf21110b4e1a54d954d57d4092727546348598a5a8e8101e4597aff"

  url "https://download.damieng.com/fonts/original/EnvyCodeR-#{version}.zip"
  name "Envy Code R"
  homepage "https://damieng.com/blog/tag/envy-code/"

  font "Envy Code R PR7/Envy Code R Bold.ttf"
  font "Envy Code R PR7/Envy Code R Italic.ttf"
  font "Envy Code R PR7/Envy Code R.ttf"

  # No zap stanza required
end
