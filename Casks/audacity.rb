require 'open-uri'
cask 'audacity' do
  version '2.1.2'
  sha256 '2e4b7d608ecc0d2f79bf16663f085d383075e488f7d50bf7d74c0b69173defe7'

  # Current official URL as proposed on http://www.audacityteam.org/download/mac/
  # must be parsed to extract temporary url embedded in iframe
  iframe_src_protected_url = nil
  open("http://www.fosshub.com/Audacity.html/audacity-macosx-ub-#{version}.dmg") do |io|
    content = io.read
    iframe_src_protected_url = %r{^\<iframe.*src=\"(http.*\.dmg)\".*>}.match(content)[1].to_s
  end
  url iframe_src_protected_url
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  suite 'Audacity'

  zap delete: '~/Library/Application Support/audacity'
end
