cask :v1_1 => 'quick-search-box' do
  version '2.0.0.1447'
  sha256 '3fec80343c50a5b492e140fef13bd1bc4cce835beb3952591e8b4638e5940470'

  url "https://qsb-mac.googlecode.com/files/GoogleQuickSearchBox-#{version}.Release.dmg"
  name 'Quick Search Box'
  homepage 'https://code.google.com/p/qsb-mac/'
  license :oss
  tags :vendor => 'Google'

  app 'Quick Search Box.app'

  postflight do
    system '/bin/chmod', '-R', '--', 'u+w', staged_path
  end

  zap :delete => '~/Library/Application Support/Google/Quick Search Box',
      :rmdir  => '~/Library/Application Support/Google/'

  caveats do
    discontinued
  end
end
