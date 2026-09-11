cask "pecunia" do
  version "2.2.3"
  sha256 "4f3bda657fcc3be192cd4fc384c13fad46f63cca44bf2b78771d9b29e941df93"

  url "https://pecuniabanking.de/downloads/#{version}/Pecunia.zip"
  name "Pecunia"
  desc "Online banking app with support for HBCI"
  homepage "https://pecuniabanking.de/"

  livecheck do
    url "https://pecuniabanking.de/index.php/downloads"
    regex(%r{href=.*?downloads/v?(\d+(?:\.\d+)+)/Pecunia\.zip}i)
  end

  depends_on :macos

  app "Pecunia.app"

  uninstall quit: "de.pecuniabanking.pecunia"

  zap trash: [
    "~/Library/Application Scripts/de.pecuniabanking.pecunia",
    "~/Library/Containers/de.pecuniabanking.pecunia",
  ]
end
