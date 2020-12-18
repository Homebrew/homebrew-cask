cask "gureumkim" do
  version "1.11.1"
  sha256 "f1e7db79b49a7675dbfc8ff57b4b55eaa55b3018803c6c46671c88b402b496c2"

  url "https://github.com/gureum/gureum/releases/download/#{version}/Gureum-#{version}.pkg",
      verified: "github.com/gureum/gureum/"
  appcast "https://github.com/gureum/gureum/releases.atom"
  name "구름 입력기"
  homepage "https://gureum.io/"

  pkg "Gureum-#{version}.pkg"

  uninstall pkgutil: "org.youknowone.inputmethod.Gureum"
end
