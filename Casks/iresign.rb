cask "iresign" do
  version "1.0"
  sha256 "2916e109f2bd0120df9387991709da7b76609b4abd909adaf3d54fd0d878daaf"

  url "https://github.com/liwx/iResign/releases/download/#{version}/iResign.tgz"
  appcast "https://github.com/liwx/iResign/releases.atom"
  name "iResign"
  desc "(re)sign apps and bundle them into ipa"
  homepage "https://github.com/liwx/iResign"

  app "iResign.app"
end
