cask "aptanastudio" do
  version "3.7.2.201807301111"
  sha256 "02d0dccd808d1dd7a16ef1aab199e472726b8476cb65728f1f1ad06f6eca2363"

  # github.com/aptana/studio3/ was verified as official when first introduced to the cask
  url "https://github.com/aptana/studio3/releases/download/#{version}/Aptana_Studio_#{version.major}.dmg"
  appcast "https://github.com/aptana/studio#{version.major}/releases.atom"
  name "Aptana Studio"
  homepage "http://www.aptana.com/"

  app "AptanaStudio.app"
end
