cask "qlimagesize" do
  version "2.6.1"
  sha256 "466c18539653056ccf7eb09eb6c68689fd9a8280a3c2ade9f2d457de53504821"

  url "https://github.com/Nyx0uf/qlImageSize/releases/download/#{version}/qlImageSize.qlgenerator.zip"
  appcast "https://github.com/Nyx0uf/qlimagesize/releases.atom"
  name "qlImageSize"
  homepage "https://github.com/Nyx0uf/qlImageSize"

  depends_on macos: ">= :high_sierra"

  qlplugin "qlImageSize.qlgenerator"
end
