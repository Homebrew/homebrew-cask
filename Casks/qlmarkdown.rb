cask 'qlmarkdown' do
  version '1.3.5'
  sha256 'a290edf5b6124cbd4e526217e0979a9011c8ef3b964a33458f5063d51a9b15f2'

  url "https://github.com/toland/qlmarkdown/releases/download/v#{version}/QLMarkdown.qlgenerator.zip"
  appcast 'https://github.com/toland/qlmarkdown/releases.atom',
          checkpoint: '717694274e431e47a407e8dc5f2b8971e208ad8614d967a62d4e05301d08aa1e'
  name 'QLMarkdown'
  homepage 'https://github.com/toland/qlmarkdown'

  qlplugin 'QLMarkdown.qlgenerator'
end
