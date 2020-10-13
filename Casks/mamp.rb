cask "mamp" do
  version "6.0"
  sha256 "8b5a5d452c35bcb62e37eb50918126b75e98699b015355775940515af555b476"

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  appcast "https://www.mamp.info/en/downloads/"
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  pkg "MAMP_MAMP_PRO_#{version}.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
