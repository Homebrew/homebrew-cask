cask "itau" do
  arch = Hardware::CPU.intel? ? "" : "_m1"

  sha256 :no_check

  if Hardware::CPU.intel?
    version "2.2.2.10"
  else
    version "2.3.2.10"
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
