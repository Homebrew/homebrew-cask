class RawTherapee < Cask
  version '4.1.26'
  sha256 'b8afa0978050621bc10ddead6f4d0b7a79f54f4d06c608af63948c4e53122255'

  url 'http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.7_64_4.1.26.zip'
  homepage 'http://rawtherapee.com'

  nested_container 'RawTherapee_OSX_10.7_64_4.1.26.dmg'
  link 'RawTherapee.app'
end
