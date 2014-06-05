def get_token(unix_timestamp)
  _hour_in_sec = 60 * 60
  _constant = 1480813383

  unix_hours = unix_timestamp / _hour_in_sec
  token = _constant + unix_hours

  token.to_s(16)
end

class Gpsbabel < Cask
  url 'http://www.gpsbabel.org/plan9.php',
    :data => {
      'dl' => 'GPSBabel-1.5.1.dmg',
      'token' => get_token(Time.now.utc.to_i)
    },
    :using => :post
  homepage 'http://www.gpsbabel.org'
  version '1.5.1'
  sha256 '042d50ee75a95ed41b5d2c3957cf7a83da21ab057a7754bf1bde720615f1473f'
  link 'GPSBabelFE.app'
end
