cask "parsec" do
  version "2.0.0"
  sha256 :no_check

  url "https://builds.parsecgaming.com/package/parsec-macos.pkg"
  name "Parsec"
  desc "Remote desktop"
  homepage "https://parsecgaming.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "parsec-macos.pkg"

  postflight do
    set_ownership "~/.parsec"
  end

  uninstall pkgutil: "tv.parsec.www",
            quit:    "tv.parsec.www"

  zap trash: "~/.parsec"
end
