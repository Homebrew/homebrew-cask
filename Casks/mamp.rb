cask "mamp" do
  version "6.5"

  if Hardware::CPU.intel?
    sha256 "957894db1b8ab3406f1c8248b89392807158ccec349bef8f2f56111052a008df"
    url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}-Intel-x86.pkg"
  else
    sha256 "82bea0c53849e8d2a73900bcc2bb108d1775e58b6ab18380d1370a61c4c58a56"
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
