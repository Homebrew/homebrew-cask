cask "gureumkim" do
  version "1.13.0"
  sha256 "c94d68fa9b9a5c523443775e004b4d93c926d0e7f4a1364bd15d60ee34131bef"

  url "https://github.com/gureum/gureum/releases/download/#{version}/Gureum-#{version}.pkg",
      verified: "github.com/gureum/gureum/"
  name "구름 입력기"
  desc "libhangul-based keyboard input"
  homepage "https://gureum.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Gureum-#{version}.pkg"

  uninstall pkgutil: "org.youknowone.inputmethod.Gureum"
end
