cask "font-elstobd" do
  version "2.104"
  sha256 "f20439bf6de7c4dd177b013fe5f262cad30bc8caedd07245ad5dfe2b8e9231cc"

  url "https://github.com/psb1558/Elstob-font/releases/download/v#{version}/Elstob_#{version}.zip"
  name "ElstobD"
  homepage "https://github.com/psb1558/Elstob-font"

  font "Elstob_font/variable/Elstob-Italic.ttf"
  font "Elstob_font/variable/Elstob.ttf"

  # No zap stanza required
end
