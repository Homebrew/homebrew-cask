cask :v1 => 'davinci-resolve' do
  module Utils
    def self.blackmagick_url(url, data)
      info = {
        'country'   => 'us',
        'platform'  => 'Mac OS X'
      }

      require 'net/http'
      Net::HTTP.post_form(URI(url), info.merge(data)).body
    end
  end

  version '11.1.3'
  sha256 '33b229a79cf431d957f8ca0870b4bda4775e1fcd1bd7f3a008cc0ab02c416d63'

  url Utils.blackmagick_url('https://www.blackmagicdesign.com/api/register/us/download/15055',
                            'product' => { 'name' => 'DaVinci Resolve' })

  homepage 'https://www.blackmagicdesign.com/products/davinciresolve'
  license :commercial

  container :nested => "DaVinci_Resolve_#{version}_Mac.dmg"
  pkg "Install Resolve #{version}.pkg"

  uninstall :script => '/Applications/DaVinci Resolve/Uninstall Resolve.app/Contents/MacOS/Uninstall Resolve'
end
