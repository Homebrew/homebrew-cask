cask "amadeus-pro" do
  version "2.8.13"
  sha256 :no_check

  url "https://s3.amazonaws.com/AmadeusPro#{version.major}/AmadeusPro.zip",
      verified: "s3.amazonaws.com/AmadeusPro2/"
  name "Amadeus Pro"
  desc "Multi-purpose audio recorder, editor and converter"
  homepage "https://www.hairersoft.com/pro.html"

  livecheck do
    url :homepage
    regex(/Download\s*Amadeus\s*Pro\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Amadeus Pro.app"

  zap trash: [
    "~/Library/Application Support/Amadeus Pro",
    "~/Library/Caches/com.HairerSoft.AmadeusPro",
    "~/Library/HTTPStorages/com.HairerSoft.AmadeusPro",
    "~/Library/Preferences/com.HairerSoft.AmadeusPro.plist",
    "~/Library/Saved Application State/com.HairerSoft.AmadeusPro.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
