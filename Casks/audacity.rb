cask 'audacity' do
  version '2.1.2'
  sha256 '2e4b7d608ecc0d2f79bf16663f085d383075e488f7d50bf7d74c0b69173defe7'

  url do
    # Audacity does not provide a fixed URL
    # Their download URL points to a html page that generates a temporary URL embedded within an iframe
    # 'open-uri' is required to open that page and grab the temporary URL
    require 'open-uri'
    # fosshub.com/Audacity.html was verified as official when first introduced to the cask
    open("https://www.fosshub.com/Audacity.html/audacity-macosx-ub-#{version}.dmg") do |io|
      content = io.read
      %r{^\<iframe.*src=\"(http.*\.dmg)\".*>}.match(content)[1].to_s
    end
  end
  name 'Audacity'
  homepage 'http://audacityteam.org'

  depends_on macos: '>= :snow_leopard'

  suite 'Audacity'

  zap delete: '~/Library/Application Support/audacity'
end
