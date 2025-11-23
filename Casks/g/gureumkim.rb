cask "gureumkim" do
  version "1.13.2"
  sha256 "eadbc2904e54885eea08f7c410e2adeec4caf8463c1321706cb3d1a3e42612d1"

  url "https://github.com/gureum/gureum/releases/download/#{version}/Gureum-#{version}.pkg",
      verified: "github.com/gureum/gureum/"
  name "구름 입력기"
  desc "Libhangul-based keyboard input"
  homepage "https://gureum.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Gureum-#{version}.pkg"

  uninstall pkgutil: "org.youknowone.inputmethod.Gureum"

  # No zap stanza required
end
