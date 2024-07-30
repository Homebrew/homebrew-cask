cask "itau" do
  arch arm: "_m1"

  sha256 :no_check

  on_arm do
    version "2.3.2.17"
  end
  on_intel do
    version "2.2.2.17"
  end

  url "https://guardiao.itau.com.br/UpdateServer/aplicativoitau#{arch}.dmg"
  name "Itau"
  desc "Banking & credit card management"
  homepage "https://www.itau.com.br/computador/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Itau.app"

  zap trash: [
    "~/.aplicativoitau",
    "~/Library/Caches/br.com.itau.aplicativoitau",
    "~/Library/Preferences/br.com.itau.aplicativoitau.plist",
    "~/Library/Saved Application State/br.com.itau.aplicativoitau.savedState",
  ]
end
