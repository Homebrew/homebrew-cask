class Skype < Cask

  if MacOS.version < :mavericks
    version '6.15.0.335'
    sha256 '592abdd157df12d718576a86c8f8e62fced55292fd7e6909d53aa5eaaa9218f4'
    url "http://download.skype.com/macosx/Skype_#{version}.dmg"
  else
    version '7.0.653'
    sha256 '58049191825e5f73daeb3118d405f84d5cadb9c84ca21b0cf4882ffb2f6c87fc'
    url "http://download.skype.com/macosx/0ddb8638badf78e8ce1d4904fb1e1a8c/Skype_#{version}.dmg"
  end

  homepage 'http://www.skype.com'
  license :unknown

  app 'Skype.app'

  zap :delete => '~/Library/Application Support/Skype'
end
