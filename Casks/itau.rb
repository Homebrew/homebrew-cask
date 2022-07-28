cask "itau" do
  arch = Hardware::CPU.intel? ? "" : "_m1"

  version "2.2.2.10"
  sha256 :no_check

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
