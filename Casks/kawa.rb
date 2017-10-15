cask 'kawa' do
  version '1.0.1'
  sha256 'ca4dcb52316de9090ab44957281d1db38747c63b1e14b9e161cf86372f4f6df0'

  url "https://github.com/utatti/kawa/releases/download/v#{version}/Kawa.zip"
  name 'Kawa'
  homepage 'https://github.com/utatti/kawa'

  app 'Kawa.app'
end
