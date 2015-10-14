cask :v1 => 'maciasl' do
  version '1.4'
  sha256 '24c0dbaa9a13231b8c8e364ef0e6d60656718320ce69d8bb23aa5bc27e82e87d'

  url "http://downloads.sourceforge.net/sourceforge/maciasl/#{version}/MaciASL.zip"
  name 'MaciASL'
  homepage 'http://sourceforge.net/projects/maciasl/'
  license :gpl

  app 'MaciASL.app'

  depends_on :macos => '>= :mountain_lion'
end
