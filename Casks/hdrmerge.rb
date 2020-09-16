cask "hdrmerge" do
  version "0.5.0"
  sha256 "7a87751b8f5aa005e7f41fcc009230f3db3f38cde66a3919184d66dd107518bf"

  # github.com/jcelaya/hdrmerge/ was verified as official when first introduced to the cask
  url "https://github.com/jcelaya/hdrmerge/releases/download/v#{version}/HDRMerge.dmg"
  appcast "https://github.com/jcelaya/hdrmerge/releases.atom"
  name "HDRMerge"
  homepage "https://jcelaya.github.io/hdrmerge/"

  app "HDRMerge.app"
  binary "#{appdir}/HDRMerge.app/Contents/MacOS/hdrmerge"
end
