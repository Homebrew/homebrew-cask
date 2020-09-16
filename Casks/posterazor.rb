cask "posterazor" do
  version "1.5"
  sha256 "dbecf2dc00fe2bf106df2e9fd9bc66014015989771db6c369a86d755f516df49"

  # downloads.sourceforge.net/posterazor/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/posterazor/Binary%20Releases/#{version}/PosteRazor-#{version}-OSX.dmg"
  appcast "https://sourceforge.net/projects/posterazor/rss"
  name "PosteRazor"
  homepage "https://posterazor.sourceforge.io/"

  app "PosteRazor.app"
end
