cask "parsec" do
  version "150.90.3"
  sha256 :no_check

  url "https://builds.parsec.app/package/parsec-macos.pkg"
  name "Parsec"
  desc "Remote desktop"
  homepage "https://parsec.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "parsec-macos.pkg"

  postflight do
    set_ownership "~/.parsec"
  end

  uninstall quit:    "tv.parsec.www",
            pkgutil: "tv.parsec.www"

  zap trash: "~/.parsec"
end
