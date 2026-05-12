cask "pecunia" do
  version "2.2.2"
  sha256 "9223d9d4d7bab655830f07feb876a9bef68c68e0a4087a29f56204726ffc6c41"

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

  zap trash: [
    "~/Library/Application Scripts/de.pecuniabanking.pecunia",
    "~/Library/Containers/de.pecuniabanking.pecunia",
  ]
end
