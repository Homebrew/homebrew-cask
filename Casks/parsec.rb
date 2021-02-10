cask "parsec" do
  version "2.0.0"
  sha256 :no_check

  url "https://s3.dualstack.us-east-1.amazonaws.com/parsec-build/package/parsec-macos.pkg",
      verified: "s3.dualstack.us-east-1.amazonaws.com/parsec-build/"
  name "Parsec"
  homepage "https://parsecgaming.com/"

  pkg "parsec-macos.pkg"

  postflight do
    set_ownership "~/.parsec"
  end

  uninstall pkgutil: "tv.parsec.www",
            quit:    "tv.parsec.www"
end
