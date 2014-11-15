cask :v1 => 'logmein-client' do
  version :latest
  sha256 :no_check

  url 'https://secure.logmein.com/welcome/labs/LogMeInIgnition.dmg'
  homepage 'https://secure.logmein.com/products/pro/learnmore/desktopapp.aspx'
  license :unknown

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/issues/4818
  app 'LogMeInIgnition.app', :target => 'LogMeIn Client.app'
end
