cask "font-formudpgothic" do
  version "1.05101"
  sha256 "6fe94947faad0dec2cab535d1a927d4f5f8ebe9231dbe4fd57bfa42646fce2f5"

  url "https://github.com/jz5/FORM-UDPGothic/releases/download/v#{version}/FORMUDPGothic.zip"
  name "FORM UDPGothic"
  name "帳票 UDPゴシック"
  homepage "https://github.com/jz5/FORM-UDPGothic"

  font "FORMUDPGothic-Bold.ttf"
  font "FORMUDPGothic-Regular.ttf"

  # No zap stanza required
end
