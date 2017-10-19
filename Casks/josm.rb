cask 'josm' do
  version '12921'
  sha256 '2bf76a52705cd700079b178614c92ba80dc5b901f9106f778d78506123a954b4'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
