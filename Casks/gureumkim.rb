cask "gureumkim" do
  version "1.12.2"
  sha256 "387bd38d7778bdd5b0efb914fa123a1459619665305c7d83bcd9cad7e32dde0e"

  url "https://github.com/gureum/gureum/releases/download/#{version}/Gureum-#{version}.pkg",
      verified: "github.com/gureum/gureum/"
  name "구름 입력기"
  homepage "https://gureum.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Gureum-#{version}.pkg"

  uninstall pkgutil: "org.youknowone.inputmethod.Gureum"
end
