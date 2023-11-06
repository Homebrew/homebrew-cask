cask "aircall" do
  version "2.36.13"
  sha256 "64241d74281ac68ccff010ee85ffe42bf937ef5b78bcc17546e8051c7d6caf43"

  url "https://download-electron.aircall.io/Aircall-#{version}.dmg"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  livecheck do
    url "https://aircall.io/api/app-infos/"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Aircall.app"

  zap trash: [
    "~/Library/Application Support/Aircall",
    "~/Library/Caches/io.aircall.phone",
    "~/Library/Caches/io.aircall.phone.ShipIt",
    "~/Library/Preferences/io.aircall.phone.plist",
  ]
end
