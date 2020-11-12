cask "mamp" do
  version "6.1"
  sha256 "3d4e2f19b4236e8618935b71ec21820bae8d6120b66d9e38d62c5e8b8e703b1a"

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
