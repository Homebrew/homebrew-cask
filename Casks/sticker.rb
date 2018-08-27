cask 'sticker' do
  version '1.0.3,8:1503613557'
  sha256 '8e638c6c305fc2060145c2e2780948182bb73ee057da4f970e91975a7cba2256'

  # dl.devmate.com/com.chompstomp.Sticker was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.chompstomp.Sticker/#{version.after_comma.before_colon}/#{version.after_colon}/Sticker-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.chompstomp.Sticker.xml'
  name 'Sticker Window manager'
  homepage 'http://www.chompstomp.com/sticker'

  app 'Sticker.app'
end
