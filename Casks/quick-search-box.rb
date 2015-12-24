cask 'quick-search-box' do
  version '2.0.0.1447'
  sha256 '3fec80343c50a5b492e140fef13bd1bc4cce835beb3952591e8b4638e5940470'

  url "https://qsb-mac.googlecode.com/files/GoogleQuickSearchBox-#{version}.Release.dmg"
  name 'Google Quick Search Box'
  homepage 'https://code.google.com/p/qsb-mac/'
  license :oss

  app 'Quick Search Box.app'

  postflight do
    set_permissions staged_path, 'u+w'
  end

  zap :delete => '~/Library/Application Support/Google/Quick Search Box',
      :rmdir  => '~/Library/Application Support/Google/'

  caveats do
    discontinued
  end
end
