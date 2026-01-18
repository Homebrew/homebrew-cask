cask "pecunia" do
  version "2.2.1"
  sha256 "4164eb25c3e28e2abd4f4a13169afd767f528510fd7262ae0c7b4e05aadd1286"

  url "https://pecuniabanking.de/downloads/#{version}/Pecunia.zip"
  name "Pecunia"
  desc "Online banking app with support for HBCI"
  homepage "https://pecuniabanking.de/"

  livecheck do
    url "https://pecuniabanking.de/index.php/downloads"
    regex(%r{href=.*?downloads/v?(\d+(?:\.\d+)+)/Pecunia\.zip}i)
  end

  app "Pecunia.app"

  zap trash: [
    "~/Library/Application Scripts/de.pecuniabanking.pecunia",
    "~/Library/Containers/de.pecuniabanking.pecunia",
  ]
end
