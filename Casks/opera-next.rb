class OperaNext < Cask
  url 'http://www.opera.com' << %x( curl -Ls 'http://www.opera.com/download/get/?partner=www&opsys=MacOS&product=Opera%20Next' | grep '/download/' | head -1 | perl -pe 's/.*'\\''(\\/.*)'\\''.*/$1/' | tr -d '\n' ) << '&amp;ext=.dmg'
  homepage 'http://www.opera.com/developer/next'
  version 'latest'
  no_checksum
  link 'Opera Next.app'
end
