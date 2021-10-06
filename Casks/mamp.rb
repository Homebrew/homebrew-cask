cask "mamp" do
  version "6.6"

  if Hardware::CPU.intel?
    sha256 "306b101a84251655b8e1d50ef1c4d59901d300f85d0e03910701d8d418d4a4d4"
    url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}-Intel-x86.pkg"
  else
    sha256 "5d83861bcade99d6562bfb92c4a95f895f9e89496ca4c33380223ab9133640e6"
    url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}-M1-arm.pkg"
  end

  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  livecheck do
    url "https://www.mamp.info/en/downloads/"
    strategy :page_match
    regex(%r{href=.*?/MAMP_MAMP_PRO_(\d+(?:\.\d+)*).*\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  if Hardware::CPU.intel?
    pkg "MAMP_MAMP_PRO_#{version}-Intel-x86.pkg"
  else
    pkg "MAMP_MAMP_PRO_#{version}-M1-arm.pkg"
  end

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
