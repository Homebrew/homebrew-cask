cask :v1 => 'decitime' do
  version '1.0.1'
  sha256 '3fcd9d6af7cf4710abd42df4db418432ca1758ba8db7affecb1a466d1996f877'

  url "http://download.filewell.com/DeciTime#{version.gsub('.','')}.dmg.zip"
  homepage 'http://www.tinbert.com/DeciTimeMac/'
  license :oss

  container :nested => 'DeciTime101.dmg'
  app 'DeciTime.app'

  # fix wonky DMG by mounting it once read-write per discussion at
  # https://github.com/caskroom/homebrew-cask/pull/2654
  preflight do
    # todo the nested_container hack must be revised when container :nested stops being an alias around 0.50.0
    system %Q{/usr/bin/hdiutil eject "$(/usr/bin/hdiutil mount -readwrite -noidme -nobrowse -mountrandom /tmp #{staged_path.join(artifacts[:nested_container].first)} | /usr/bin/cut -f3 -- - | /usr/bin/grep -- '.' -)" >/dev/null 2>&1}
  end
end
