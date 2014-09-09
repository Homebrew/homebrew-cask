class Skype < Cask
  if MacOS.version < :mavericks
    version '6.15.0.335'
    sha256 '592abdd157df12d718576a86c8f8e62fced55292fd7e6909d53aa5eaaa9218f4'
    url 'http://download.skype.com/macosx/Skype_6.15.0.335.dmg'
  else
    version 'latest'
    sha256 :no_check
    url 'https://www.skype.com/go/getskype-macosx.dmg'
  end
  homepage 'http://www.skype.com'

  link 'Skype.app'
end
