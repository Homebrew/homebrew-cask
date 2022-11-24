cask "itau" do
  arch arm: "_m1"

  sha256 :no_check

  on_intel do
    version "2.2.2.11"
  end
  on_arm do
    version "2.3.2.11"
  end

  url "https://guardiao.itau.com.br/UpdateServer/aplicativoitau#{arch}.dmg"
  name "Itau"
  desc "Banking & credit card management"
  homepage "https://www.itau.com.br/computador/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Itau.app"

  zap trash: "~/.aplicativoitau"
end
