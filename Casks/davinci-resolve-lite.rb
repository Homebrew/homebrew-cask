cask :v1 => 'davinci-resolve-lite' do
  module Utils
    def self.blackmagick_url(url, data)
      info = {
        'country'   => 'us',
        'platform'  => 'Mac OS X',
        'firstname' => 'Homebrew',
        'lastname'  => 'Cask',
        'company'   => 'Hombrew Cask',
        'email'     => 'N/A',
        'phone'     => 'N/A',
        'city'      => 'N/A',
        'state'     => 'N/A'
      }

      require 'net/http'
      Net::HTTP.post_form(URI(url), info.merge(data)).body
    end
  end

  version '11.1.3'
  sha256 '09b51ce4e962a525f3c13c03c50c0bbe77f5cf73411833209402d9ce9be75f44'

  url Utils.blackmagick_url('https://www.blackmagicdesign.com/api/register/us/download/15061',
                            'product' => { 'name' => 'DaVinci Resolve Lite' })

  homepage 'https://www.blackmagicdesign.com/products/davinciresolve'
  license :gratis

  container :nested => "DaVinci_Resolve_Lite_#{version}_Mac.dmg"
  pkg "Install Resolve #{version} Lite.pkg"

  uninstall :script => { :executable => '/usr/bin/open', :args => ['/Applications/DaVinci Resolve/Uninstall Resolve.app'] }
end
