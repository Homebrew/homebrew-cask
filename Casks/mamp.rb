cask "mamp" do
  version "6.3"
  sha256 "49cae98aee1a95d56a42750e8c76a43a5a3e227cbebf5f6d09fd94cdb095a3f9"

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  livecheck do
    url "https://www.mamp.info/en/downloads/"
    strategy :page_match
    regex(%r{href=.*?/MAMP_MAMP_PRO_(\d+(?:\.\d+)*)\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  pkg "MAMP_MAMP_PRO_#{version}.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
