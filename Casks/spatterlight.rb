cask 'spatterlight' do
  version '0.5.12b'

  if MacOS.version >= :catalina
    # URL_SECTION recent releases are only on github and not ccxvii.net
    url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Catalina.zip"
    sha256 '4f9f975bbdc747fe6ad0a33ed25ff1baf82340987b2f6937f8a08ff83c337b79'

  elsif MacOS.version >= :mavericks
    # URL_SECTION recent releases are only on github and not ccxvii.net
    url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Mavericks.zip"
    sha256 'f9fa79d5d8e81397058e0f4ccd1d4e944ef6c5c66b2dc92792456feeaf8379e6'

  else
    # URL_SECTION recent releases are only on github and not ccxvii.net
    url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Lion.zip"
    sha256 '96f5a07ba8b66d58e4317b8e36fdc14bf8855834b72af4c43a1d037f20e5755f'
  end

  appcast 'https://github.com/angstsmurf/spatterlight/releases.atom'
  name 'Spatterlight'
  homepage 'http://ccxvii.net/spatterlight/'

  app 'Spatterlight.app'
end
