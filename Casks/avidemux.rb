cask 'avidemux' do
  version '2.6.16'
  sha256 'e9e8c8937f8039ba1eaa61c1b083e1262c29c5f7e27fa636a7f8a417c83ca66e'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '14cf1d7c8fb20c4dbec63cd7beaf403f623bf3c402010367b098220fae41a8d1'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
