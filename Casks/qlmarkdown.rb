class Qlmarkdown < Cask
  version '1.3.3'
  sha256 '045712562665673924397bbbef1ee1157b44e23c9744feda6feda27e107802d3'

  url 'https://github.com/toland/qlmarkdown/releases/download/v1.3.3/QLMarkdown.qlgenerator.zip'
  homepage 'https://github.com/toland/qlmarkdown'

  qlplugin 'QLMarkdown.qlgenerator'
end
