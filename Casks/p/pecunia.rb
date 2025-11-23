cask "pecunia" do
  version "2.2.0"
  sha256 "233cd0c7cda54230e0bf7b45ca56553a70672ecd07e24754f559a0ff9eac62b6"

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
