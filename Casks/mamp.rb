cask "mamp" do
  arch arm: "M1-arm", intel: "Intel-x86"

  version "6.6"

  url "https://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}-#{arch}.pkg"
  on_intel do
    sha256 "306b101a84251655b8e1d50ef1c4d59901d300f85d0e03910701d8d418d4a4d4"
  end
  on_arm do
    sha256 "4eb2a5146c0f0ccacfdaf4ea31e5735317a9e2aab18c0b9b591ab96c17808f1d"
  end

  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  livecheck do
    url "https://www.mamp.info/en/downloads/"
    regex(%r{href=.*?/MAMP[._-]MAMP[._-]PRO[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP_MAMP_PRO_#{version}-#{arch}.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
