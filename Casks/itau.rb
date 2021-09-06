cask "itau" do
  version "2.1.2.18"
  sha256 :no_check

  url "https://guardiao.itau.com.br/UpdateServer/aplicativoitau.dmg"
  name "Itau"
  homepage "https://www.itau.com.br/computador/"

  app "Itau.app"

  zap trash: "~/.aplicativoitau"
end
