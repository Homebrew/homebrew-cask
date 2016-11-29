cask 'decitime' do
  version '1.0.1'
  sha256 '3fcd9d6af7cf4710abd42df4db418432ca1758ba8db7affecb1a466d1996f877'

  url "http://www.tinbert.com/download.filewell.com/DeciTime#{version.no_dots}.dmg.zip"
  name 'DeciTime'
  homepage 'http://www.tinbert.com/DeciTimeMac/'

  container nested: (nested_container = "DeciTime#{version.no_dots}.dmg")

  app 'DeciTime.app'

  # fix wonky DMG by mounting it once read-write per discussion at
  # https://github.com/caskroom/homebrew-cask/pull/2654
  preflight do
    system %Q{/usr/bin/hdiutil eject "$(/usr/bin/hdiutil mount -readwrite -noidme -nobrowse -mountrandom /tmp #{staged_path.join(nested_container)} | /usr/bin/cut -f3 -- - | /usr/bin/grep -- '.' -)" >/dev/null 2>&1}
  end
end
