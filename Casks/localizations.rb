cask 'localizations' do
  version '0.2'
  sha256 '7feebd7f46f0244aec4e321ec3dda556bc1be80ee6a3b81167a964926c082e99'

  url "https://github.com/athiercelin/localizations/releases/download/#{version}/Localizations.zip"
  appcast 'https://github.com/athiercelin/localizations/releases.atom'
  name 'Localizations'
  homepage 'https://github.com/athiercelin/localizations'

  app 'Localizations.app'
end
