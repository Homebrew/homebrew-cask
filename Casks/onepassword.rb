class Onepassword < Cask

  if MacOS.version < :yosemite
    version '4.4.3'
    sha256 '6657fc9192b67dde63fa9f67b344dc3bc6b7ff3e501d3dbe0f5712a41d8ee428'
    app '1Password 4.app'
  else
    version '5.0.1'
    sha256 '359c69dadb9422caab64e3db34c8c5ef5e9355938e811873a57daaf74560605c'
    app '1Password 5.app'
  end

  url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword'
  license :commercial
end
