cask "mamp" do
  version "6.0.1"
  sha256 "2b924e3d5a15d0f7e69a12e9c3aad3db1299206d3aab9a70f08ee2288b7aa37d"

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
