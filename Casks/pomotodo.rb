cask :v1 => 'pomotodo' do
  version :latest
  sha256 :no_check

  # hackplan.com is the official download host per the vendor homepage
  url 'http://air.hackplan.com/v1/p/com.pomotodo.PomotodoMac/download'
  name 'Pomodoro'
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'https://pomotodo.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pomotodo.app'
end
