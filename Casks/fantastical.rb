cask :v1 => 'fantastical' do
  version '1.3.18'
  sha256 '00069dca92be66b04351cb9b19146c305696fb5970b33e71c1b2d687bbc5f2a8'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php',
          :sha256 => '3d789ff8dd91c8ebc1b63d2811ec17e0a950433b03605d8c10eef010733cf79a'
  name 'Fantastical'
  homepage 'http://flexibits.com/fantastical'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Fantastical.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
