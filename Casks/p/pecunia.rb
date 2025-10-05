cask "pecunia" do
  version "2.2.0"
  sha256 "1803f86a825491a62ec6ae7537a7df61c6509f71e74327fd4e8b5375f5989dea"

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
