cask 'qlswift' do
  version '0.0.2'
  sha256 '97ceafb35519c49793e96fbdb865013d3cf044e88b5ccf259856141723c54613'

  url "https://github.com/lexrus/QLSwift/releases/download/#{version}/QLSwift.qlgenerator.zip"
  appcast 'https://github.com/lexrus/QLSwift/releases.atom',
          checkpoint: 'ac6706c2f6fc75663df60ea0809447cfdabe41acb40a7870207f78bd88ad92ed'
  name 'QLSwift'
  homepage 'https://github.com/lexrus/QLSwift'

  qlplugin 'QLSwift.qlgenerator'
end
