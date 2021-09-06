cask "mamp" do
  version "6.4"
  sha256 "619354e7ca14500352245524de93c41b8ec3ab2d55ad85f62049f0e442f5acc7"

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
