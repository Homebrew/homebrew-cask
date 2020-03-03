cask 'sdcc' do
  version '4.0.0'
  sha256 '84056a0d0a144e5e41ccc30dd1ca172e8a48ff0c964724d5a4fe32283bebecb1'

  url "https://downloads.sourceforge.net/sdcc/sdcc-#{version}-x86_64-apple-macosx.tar.bz2"
  appcast 'https://sourceforge.net/projects/sdcc/rss'
  name 'Small Device C Compiler'
  homepage 'http://sdcc.sourceforge.net/'

  conflicts_with formula: 'sdcc'

  binary "sdcc-#{version}/bin/as2gbmap"
  binary "sdcc-#{version}/bin/makebin"
  binary "sdcc-#{version}/bin/packihx"
  binary "sdcc-#{version}/bin/s51"
  binary "sdcc-#{version}/bin/sdar"
  binary "sdcc-#{version}/bin/sdas390"
  binary "sdcc-#{version}/bin/sdas6808"
  binary "sdcc-#{version}/bin/sdas8051"
  binary "sdcc-#{version}/bin/sdasgb"
  binary "sdcc-#{version}/bin/sdaspdk13"
  binary "sdcc-#{version}/bin/sdaspdk14"
  binary "sdcc-#{version}/bin/sdaspdk15"
  binary "sdcc-#{version}/bin/sdasrab"
  binary "sdcc-#{version}/bin/sdasstm8"
  binary "sdcc-#{version}/bin/sdastlcs90"
  binary "sdcc-#{version}/bin/sdasz80"
  binary "sdcc-#{version}/bin/sdcc"
  binary "sdcc-#{version}/bin/sdcdb"
  binary "sdcc-#{version}/bin/sdcdb.el"
  binary "sdcc-#{version}/bin/sdcdbsrc.el"
  binary "sdcc-#{version}/bin/sdcpp"
  binary "sdcc-#{version}/bin/sdld"
  binary "sdcc-#{version}/bin/sdld6808"
  binary "sdcc-#{version}/bin/sdldgb"
  binary "sdcc-#{version}/bin/sdldpdk"
  binary "sdcc-#{version}/bin/sdldstm8"
  binary "sdcc-#{version}/bin/sdldz80"
  binary "sdcc-#{version}/bin/sdnm"
  binary "sdcc-#{version}/bin/sdobjcopy"
  binary "sdcc-#{version}/bin/sdranlib"
  binary "sdcc-#{version}/bin/shc08"
  binary "sdcc-#{version}/bin/spdk"
  binary "sdcc-#{version}/bin/sstm8"
  binary "sdcc-#{version}/bin/stlcs"
  binary "sdcc-#{version}/bin/sz80"
end
