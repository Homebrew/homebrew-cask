cask 'grandtotal' do
  version '6.0.3'
  sha256 'e3d6ced41cb5d8d767f0f65847407c2e864baf4043ca6e5053e7374ed4c52952'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
