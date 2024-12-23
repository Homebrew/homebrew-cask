cask "pecunia" do
  version "2.1.9"
  sha256 "dbaccb5a8e25d11945ce0e0b7a8b654d5eb54ba6875a9ff8811c75aa1a7cb04e"

  url "https://pecuniabanking.de/downloads/#{version}/Pecunia.zip"
  name "Pecunia"
  desc "Online banking app with support for HBCI"
  homepage "https://pecuniabanking.de/"

  livecheck do
    url "https://pecuniabanking.de/index.php/downloads"
    regex(%r{href=.*?downloads/v?(\d+(?:\.\d+)+)/Pecunia\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Pecunia.app"

  zap trash: [
    "~/Library/Application Scripts/de.pecuniabanking.pecunia/",
    "~/Library/Containers/de.pecuniabanking.pecunia/",
  ]
end
