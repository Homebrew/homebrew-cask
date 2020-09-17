cask "lynkeos" do
  version "3.4"
  sha256 "aba6783ad3ef5c4f8785f70f120787b0ee918296f0c9a66cf91977d5c207db22"

  # downloads.sourceforge.net/lynkeos/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip"
  appcast "https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos"
  name "Lynkeos"
  homepage "https://lynkeos.sourceforge.io/"

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
