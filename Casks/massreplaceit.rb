cask :v1 => 'massreplaceit' do
  version '2.9.1'
  sha256 '1ab3482f7568953899474397fa401342daec56d4efe4a856de8e387294f7c667'
  container :nested => 'MassReplaceIt.dmg'

  url 'http://www.hexmonkeysoftware.com/files/mri.dmg.zip'
  homepage 'http://www.hexmonkeysoftware.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'MassReplaceIt.app'
end
