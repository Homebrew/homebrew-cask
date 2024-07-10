cask "pecunia" do
  version "2.1.8"
  sha256 "65cd887eae090218930500aa4d6a6cbbe7beb2a37edd843524b570feec12fca0"

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
