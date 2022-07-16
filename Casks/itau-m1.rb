cask "itau-m1" do
  version "2.3.2.9"
  sha256 :no_check

  url "https://guardiao.itau.com.br/UpdateServer/aplicativoitau_m1.dmg"
  name "Itau"
  desc "Versão exclusiva para Mac com chip Apple M1"
  homepage "https://www.itau.com.br/computador/"

  app "Itau.app"

  zap trash: "~/.aplicativoitau_m1"
end
