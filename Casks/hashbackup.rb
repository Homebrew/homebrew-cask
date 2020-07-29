cask 'hashbackup' do
  version '2490'
  sha256 '9a3da9039a37fdea68d283de5b07b8492047bc9e4b78351bdccf7b16e02b2bcc'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
