class LastPass < Cask
  url 'https://lastpass.com/download/cdn/lpmacosx.dmg'
  homepage 'https://lastpass.com'
  version '2.5.0'
  sha1 '0efa71f9b5efb9b4bed2574025eb9c0bedc1eada'
  install 'lpmacosx.pkg'
end
