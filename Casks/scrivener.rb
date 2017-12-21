cask 'scrivener' do
  version '3.0.1'
  sha256 '4524ed2816bee4a11b336e6a066792c8d12cef5efb484111d26edf4f606cf900'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '91069b462bee4454285dada0ee550a6712d317ce2101d12b2f72403fb24e939e'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
