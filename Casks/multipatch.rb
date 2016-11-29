cask 'multipatch' do
  version '1.5'
  sha256 'd69af49969f035ae0eb4bebe55bb6bca78ebe816ee32eccdf0060e8bd3d1c893'

  url "http://projects.sappharad.com/tools/multipatch#{version.no_dots}.zip"
  name 'MultiPatch'
  homepage 'http://projects.sappharad.com/tools/multipatch.html'

  app 'MultiPatch/MultiPatch.app'
end
