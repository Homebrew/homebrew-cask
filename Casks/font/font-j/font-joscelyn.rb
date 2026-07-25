cask "font-joscelyn" do
  version "1.020"
  sha256 "ec51b5cefc7f9273c2ff3fb44f22fb72a5a0e1733f198090c2c950c90c0f0ec2"

  url "https://github.com/psb1558/Joscelyn-font/releases/download/v#{version}/Joscelyn_#{version.dots_to_underscores}.zip"
  name "Joscelyn"
  homepage "https://github.com/psb1558/Joscelyn-font"

  font "Joscelyn/Joscelyn.otf"

  # No zap stanza required
end
