cask :v1 => 'grandtotal' do
  version '3.4.4'
  sha256 '53a47260c3957ebfc2afe30c1e58d1f4fba0ceef6de6ee8dd20d470947373f16'

  url "http://mediaatelier.com/GrandTotal3/GrandTotal_#{version}.zip"
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php',
          :sha256 => '25359a25ef166bc1f397d4d8b2f478e97656e1eaa82bdfa87f81044965dba093'
  name 'GrandTotal'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app "GrandTotal #{version.to_i}.app"
end
