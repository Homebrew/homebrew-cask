cask 'kubebox' do
  version '0.3.1'
  sha256 '2e7457e4400db6152b62b035d1ce8fe47dd2b756d68aaef4a2802e8d737c4e29'

  url "https://github.com/astefanutti/kubebox/releases/download/v#{version}/kubebox-macos"
  appcast 'https://github.com/astefanutti/kubebox/releases.atom'
  name 'kubebox'
  homepage 'https://github.com/astefanutti/kubebox'

  container type: :naked

  binary 'kubebox-macos', target: 'kubebox'
end
