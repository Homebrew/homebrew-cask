cask 'dbeaver-community' do
  version '4.2.0'
  sha256 '989594ad9775af5519a1150926c1ccd8b5c6093c08360c77a56840ae2818fd33'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '413c6d626d947b2c237423af5a936161c05a3699a8650519960953efcee55a57'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
