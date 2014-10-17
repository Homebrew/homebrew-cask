class Onepassword < Cask
  version '5.0.1'
  sha256 '359c69dadb9422caab64e3db34c8c5ef5e9355938e811873a57daaf74560605c'

  url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword'
  license :unknown

  app '1Password 5.app'
end
