cask 'banking-4x' do
  # note: "4x" is not a version number, but an intrinsic part of the product name
  version '6.10.3.6676'
  sha256 'ac9f05d4aaf1e176f873953fe2381ee2dbb0339f7275e8f388c45c4c8f92312a'

  url 'https://subsembly.com/download/MacBanking.pkg'
  appcast 'https://subsembly.com/banking4x-updates.php',
          checkpoint: '6d974a6ca0eea918f7e0c4188eb0e457147811d64627815bab9810420b534f25'
  name 'Banking 4X'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
