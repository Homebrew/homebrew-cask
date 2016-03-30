cask 'qlmarkdown' do
  version '1.3.5'
  sha256 'a290edf5b6124cbd4e526217e0979a9011c8ef3b964a33458f5063d51a9b15f2'

  url "https://github.com/toland/qlmarkdown/releases/download/v#{version}/QLMarkdown.qlgenerator.zip"
  appcast 'https://github.com/toland/qlmarkdown/releases.atom',
          checkpoint: '90c2dd6a28f257f169c067ad0f8b24b42cf0edd38955bfe0e629215cf8db74f7'
  name 'QLMarkdown'
  homepage 'https://github.com/toland/qlmarkdown'
  license :bsd

  qlplugin 'QLMarkdown.qlgenerator'
end
