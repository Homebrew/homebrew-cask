class Decitime < Cask
  url 'http://download.filewell.com/DeciTime101.dmg.zip'
  homepage 'http://www.tinbert.com/DeciTimeMac/'
  version '1.0.1'
  sha256 '3fcd9d6af7cf4710abd42df4db418432ca1758ba8db7affecb1a466d1996f877'
  nested_container 'DeciTime101.dmg'
  link 'DeciTime.app'

  # fix wonky DMG by mounting it once read-write per discussion at
  # https://github.com/phinze/homebrew-cask/pull/2654
  before_install do
    system %Q{/usr/bin/hdiutil eject "$(/usr/bin/hdiutil mount -readwrite -noidme -nobrowse -mountrandom /tmp #{destination_path.join(artifacts[:nested_container].first)} | /usr/bin/cut -f3 | /usr/bin/grep '.')" >/dev/null 2>&1}
  end
end
