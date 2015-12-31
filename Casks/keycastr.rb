cask 'keycastr' do
  version 'v0.9.2'
  sha256 'c6664d87d52fbfde0f358cd412d07c4fd57ccd437dc2c1bb8d89259ed3ab75d2'

  url "https://github.com/keycastr/keycastr/releases/download/#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          :sha256 => '09be2f849e723a795b9e8527f8ee24343d2b480580f906eeac91aef5e37997bd'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  app 'KeyCastr.app'

  accessibility_access true
end
