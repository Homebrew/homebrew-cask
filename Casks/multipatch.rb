cask :v1 => 'multipatch' do
  version '1.4'
  sha256 'ce95baacf8d4d323e144fa31e52c80519c0f81a59a8f3239c25c0da4b927fcf5'

  url "http://projects.sappharad.com/tools/multipatch#{version.gsub('.', '')}.zip"
  homepage 'http://projects.sappharad.com/tools/multipatch.html'
  license :gpl

  app 'MultiPatch/MultiPatch.app'
end
