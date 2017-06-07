cask 'geckodriver' do
  version '0.16.1'
  sha256 'eb5a2971e5eb4a2fe74a3b8089f0f2cc96eed548c28526b8351f0f459c080836'

  url "https://github.com/mozilla/geckodriver/releases/download/v#{version}/geckodriver-v#{version}-macos.tar.gz"
  appcast 'https://github.com/mozilla/geckodriver/releases.atom',
          checkpoint: '822086125ca1c1c76dffc0bba3127bd0e984559a3ae32dd7f4408768950ac3da'
  name 'GeckoDriver'
  name 'Gecko WebDriver'
  homepage 'https://github.com/mozilla/geckodriver'

  binary 'geckodriver'
end
