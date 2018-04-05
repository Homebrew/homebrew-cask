cask 'banking-4x' do
  # note: "4x" is not a version number, but an intrinsic part of the product name
  version '6.10.2.6649'
  sha256 '747bf1c602e9bb752889773d8834e04a171ecba16a7445183ce8a3e89ac0b2de'

  url 'https://subsembly.com/download/MacBanking.pkg'
  appcast 'https://subsembly.com/banking4x-updates.php',
          checkpoint: 'c70bb00ff1dafc4b217c4e8fa722a8d940d267a7a5567339e738284800f41e8b'
  name 'Banking 4X'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
