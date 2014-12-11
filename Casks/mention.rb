cask :v1 => 'mention' do
  version :latest
  sha256 :no_check

  url 'https://en.mention.com/downloads/mac/mention.dmg'
  homepage 'https://en.mention.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mention.app'
end
