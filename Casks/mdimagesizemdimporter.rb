cask "mdimagesizemdimporter" do
  version "2.6.1"
  sha256 "ee9e8057d914e3f0330887e72658bc612ba3d665968f742f15190f66eb2e3d54"

  url "https://github.com/Nyx0uf/qlImageSize/releases/download/#{version}/mdImageSize.mdimporter.zip"
  name "mdImageSize"
  homepage "https://github.com/Nyx0uf/qlImageSize"

  depends_on macos: ">= :high_sierra"

  mdimporter "mdImageSize.mdimporter"
end
