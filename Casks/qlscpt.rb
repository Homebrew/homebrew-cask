cask 'qlscpt' do
  version '1.0'
  sha256 '2bf0ea96a418f843d87a7625e365de92f37d8d06a36df664f9ed0afd48ede15d'

  url "https://github.com/josh-/QLScpt/releases/download/v#{version}/QLScpt.zip"
  name 'QLScpt'
  homepage 'https://github.com/josh-/QLScpt/'

  qlplugin 'QLScpt.qlgenerator'
end
