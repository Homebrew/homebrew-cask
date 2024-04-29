cask "pecunia" do
  version "2.1.7"
  sha256 "2e9822d38b6db4b37e7a561c11c3f6e87a6bbd7a2c2bd8fbaa6eedacca55f0ee"

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
